; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c___clear_tst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c___clear_tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i64*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.vc_map* }
%struct.vc_map = type { i32 }

@TSTE_OPC_VAR = common dso_local global i32 0, align 4
@TSTE_PUSH_ACTIVE = common dso_local global i32 0, align 4
@TSTE_PUSH_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*)* @__clear_tst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clear_tst(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.vc_map* %1, %struct.vc_map** %4, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = xor i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %9, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %86, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %20 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 2
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %17
  %25 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %26 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.vc_map*, %struct.vc_map** %31, align 8
  %33 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %34 = icmp eq %struct.vc_map* %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %24
  %36 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %37 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.vc_map* null, %struct.vc_map** %42, align 8
  %43 = load i32, i32* @TSTE_OPC_VAR, align 4
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 8
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %52 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %51, i32 0, i32 4
  %53 = call i64 @timer_pending(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %35
  %56 = load i32, i32* @TSTE_PUSH_ACTIVE, align 4
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %56
  store i32 %65, i32* %63, align 8
  br label %84

66:                                               ; preds = %35
  %67 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = load i32, i32* @TSTE_OPC_VAR, align 4
  %73 = call i32 @write_sram(%struct.idt77252_dev* %67, i64 %71, i32 %72)
  %74 = load i32, i32* @TSTE_PUSH_IDLE, align 4
  %75 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %76 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %74
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %66, %55
  br label %85

85:                                               ; preds = %84, %24
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %17

89:                                               ; preds = %17
  ret i32 0
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
