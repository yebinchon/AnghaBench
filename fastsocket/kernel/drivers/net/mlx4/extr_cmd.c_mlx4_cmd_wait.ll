; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd = type { i64, i32, i32, %struct.mlx4_cmd_context*, i64 }
%struct.mlx4_cmd_context = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_cmd }

@.str = private unnamed_addr constant [45 x i8] c"command 0x%x timed out (go bit not cleared)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"command 0x%x failed: fw status = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i64)* @mlx4_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cmd_wait(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.mlx4_cmd*, align 8
  %18 = alloca %struct.mlx4_cmd_context*, align 8
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %21 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.mlx4_cmd* %22, %struct.mlx4_cmd** %17, align 8
  store i32 0, i32* %19, align 4
  %23 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %23, i32 0, i32 1
  %25 = call i32 @down(i32* %24)
  %26 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %36 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %35, i32 0, i32 3
  %37 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %36, align 8
  %38 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %37, i64 %40
  store %struct.mlx4_cmd_context* %41, %struct.mlx4_cmd_context** %18, align 8
  %42 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %43 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %53 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %56 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %58 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %61 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %60, i32 0, i32 4
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %8
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %77 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mlx4_cmd_post(%struct.mlx4_dev* %63, i32 %64, i32 %72, i32 %73, i32 %74, i32 %75, i32 %78, i32 1)
  %80 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %81 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %80, i32 0, i32 4
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @msecs_to_jiffies(i64 %82)
  %84 = call i32 @wait_for_completion_timeout(i32* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %71
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @mlx4_warn(%struct.mlx4_dev* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %19, align 4
  br label %114

92:                                               ; preds = %71
  %93 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %94 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %102 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @mlx4_err(%struct.mlx4_dev* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103)
  br label %114

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %110 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113, %98, %86
  %115 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %116 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %115, i32 0, i32 2
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %119 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %122 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %18, align 8
  %124 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %125 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %124, i32 0, i32 3
  %126 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %125, align 8
  %127 = ptrtoint %struct.mlx4_cmd_context* %123 to i64
  %128 = ptrtoint %struct.mlx4_cmd_context* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 32
  %131 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %132 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %134 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %133, i32 0, i32 2
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %17, align 8
  %137 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %136, i32 0, i32 1
  %138 = call i32 @up(i32* %137)
  %139 = load i32, i32* %19, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlx4_cmd_post(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
