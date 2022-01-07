; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_get_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_get_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Failed to get a tag.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*)* @get_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_slot(%struct.mtip_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %3, align 8
  %7 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %8 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 32
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %35, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %18 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @find_next_zero_bit(i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %28 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @test_and_set_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %25, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %40 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %47 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i64 @mtip_check_surprise_removal(%struct.TYPE_4__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %55 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @mtip_command_cleanup(%struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %53, %38
  store i32 -1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.TYPE_4__*) #1

declare dso_local i32 @mtip_command_cleanup(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
