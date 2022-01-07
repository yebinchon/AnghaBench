; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_quiesce_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_quiesce_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_ACTIVE_BIT = common dso_local global i32 0, align 4
@MTIP_PF_ISSUE_CMDS_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, i64)* @mtip_quiesce_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_quiesce_io(%struct.mtip_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %8, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @msecs_to_jiffies(i64 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %74, %2
  %14 = load i32, i32* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 4
  %15 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %16 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* @MTIP_PF_ISSUE_CMDS_BIT, align 4
  %21 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %22 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %21, i32 0, i32 2
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @msleep(i32 20)
  br label %74

27:                                               ; preds = %19, %13
  %28 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %29 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %28, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %27
  %39 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %40 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @readl(i32 %43)
  %45 = and i32 %44, -2
  store i32 %45, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %49 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %47, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %56 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @readl(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %46

68:                                               ; preds = %46
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %79

72:                                               ; preds = %68
  %73 = call i32 @msleep(i32 20)
  br label %74

74:                                               ; preds = %72, %25
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @time_before(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %13, label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %35
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
