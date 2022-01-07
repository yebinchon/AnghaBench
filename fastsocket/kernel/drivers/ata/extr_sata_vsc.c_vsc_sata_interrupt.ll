; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, i32*, i32, i64* }

@VSC_MMIO_BAR = common dso_local global i64 0, align 8
@VSC_SATA_INT_STAT_OFFSET = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c": IRQ status == 0xffffffff, PCI fault or device removal?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vsc_sata_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc_sata_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ata_host*
  store %struct.ata_host* %11, %struct.ata_host** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @VSC_MMIO_BAR, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VSC_SATA_INT_STAT_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi i1 [ true, %2 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %37 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_printk(i32 %35, i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %34, %31
  br label %79

41:                                               ; preds = %26
  %42 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %43 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %72, %41
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %48 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul i32 8, %53
  %55 = ashr i32 %52, %54
  %56 = and i32 %55, 255
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %62 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @vsc_port_intr(i32 %60, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %59, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %77 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %40
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @IRQ_RETVAL(i32 %80)
  ret i32 %81
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_printk(i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vsc_port_intr(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
