; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_grab_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_grab_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@__const.eepro_grab_irq.irqlist = private unnamed_addr constant [9 x i32] [i32 3, i32 4, i32 5, i32 7, i32 9, i32 10, i32 11, i32 12, i32 0], align 16
@INT_NO_REG = common dso_local global i32 0, align 4
@irqrmap = common dso_local global i32* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @eepro_grab_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eepro_grab_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = bitcast [9 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([9 x i32]* @__const.eepro_grab_irq.irqlist to i8*), i64 36, i1 false)
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %9, i32** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @eepro_sw2bank1(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @eepro_en_intline(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @eepro_sw2bank0(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @eepro_clear_int(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @eepro_en_intexec(i32 %21)
  br label %23

23:                                               ; preds = %67, %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @eepro_sw2bank1(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @INT_NO_REG, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @inb(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 248
  %32 = load i32*, i32** @irqrmap, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %31, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @INT_NO_REG, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @outb(i32 %38, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @eepro_sw2bank0(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IRQF_SHARED, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i64 @request_irq(i32 %46, i32* null, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.net_device* %48)
  %50 = load i64, i64* @EBUSY, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %23
  %53 = call i64 (...) @probe_irq_on()
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @eepro_diag(i32 %54)
  %56 = call i32 @mdelay(i32 20)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @probe_irq_off(i64 %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %72

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @eepro_clear_int(i32 %64)
  br label %66

66:                                               ; preds = %63, %23
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %23, label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @eepro_sw2bank1(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @eepro_dis_intline(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @eepro_sw2bank0(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @eepro_dis_int(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @eepro_clear_int(i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @eepro_sw2bank1(i32) #2

declare dso_local i32 @eepro_en_intline(i32) #2

declare dso_local i32 @eepro_sw2bank0(i32) #2

declare dso_local i32 @eepro_clear_int(i32) #2

declare dso_local i32 @eepro_en_intexec(i32) #2

declare dso_local i32 @inb(i32) #2

declare dso_local i32 @outb(i32, i32) #2

declare dso_local i64 @request_irq(i32, i32*, i32, i8*, %struct.net_device*) #2

declare dso_local i64 @probe_irq_on(...) #2

declare dso_local i32 @eepro_diag(i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @probe_irq_off(i64) #2

declare dso_local i32 @eepro_dis_intline(i32) #2

declare dso_local i32 @eepro_dis_int(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
