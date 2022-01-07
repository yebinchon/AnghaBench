; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_i2c_low_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_i2c_low_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.smu_i2c_cmd* }
%struct.smu_i2c_cmd = type { i32, i32*, i64, i64 }
%struct.smu_cmd = type { i64, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"SMU: i2c compl. stage=%d status=%x pdata[0]=%x rlen: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"SMU: i2c failure, starting timer...\0A\00", align 1
@smu = common dso_local global %struct.TYPE_2__* null, align 8
@smu_irq_inited = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"SMU: going to stage 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smu_cmd*, i8*)* @smu_i2c_low_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_i2c_low_completion(%struct.smu_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.smu_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smu_i2c_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.smu_cmd* %0, %struct.smu_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.smu_i2c_cmd*
  store %struct.smu_i2c_cmd* %8, %struct.smu_i2c_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14, i32 %19, i32 %22)
  %24 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 128
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %39
  br label %64

56:                                               ; preds = %29
  %57 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %56, %55
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %78, align 8
  %80 = icmp ne %struct.smu_i2c_cmd* %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load i32, i32* @smu_irq_inited, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = call i32 @mdelay(i32 5)
  %87 = call i32 @smu_i2c_retry(i32 0)
  br label %133

88:                                               ; preds = %74
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* @jiffies, align 8
  %92 = call i64 @msecs_to_jiffies(i32 5)
  %93 = add nsw i64 %91, %92
  %94 = call i32 @mod_timer(i32* %90, i64 %93)
  br label %133

95:                                               ; preds = %68, %65
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98, %95
  %104 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @smu_i2c_complete_command(%struct.smu_i2c_cmd* %104, i32 %105)
  br label %133

107:                                              ; preds = %98
  %108 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %115 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %114, i32 0, i32 1
  store i32 8, i32* %115, align 8
  %116 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %120 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %122 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  %123 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %124 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 0, i32* %126, align 4
  %127 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %128 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %129, i32 0, i32 2
  store i64 20, i64* %130, align 8
  %131 = load %struct.smu_cmd*, %struct.smu_cmd** %3, align 8
  %132 = call i32 @smu_queue_cmd(%struct.smu_cmd* %131)
  br label %133

133:                                              ; preds = %107, %103, %88, %85
  ret void
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @smu_i2c_retry(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @smu_i2c_complete_command(%struct.smu_i2c_cmd*, i32) #1

declare dso_local i32 @smu_queue_cmd(%struct.smu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
