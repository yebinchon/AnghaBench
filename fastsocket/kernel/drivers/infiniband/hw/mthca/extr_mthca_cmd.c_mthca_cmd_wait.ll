; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.mthca_cmd_context*, i64 }
%struct.mthca_cmd_context = type { i64, i32, i32, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Command %02x completed with status %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, i32, i32*, i32, i32, i32, i32, i64)* @mthca_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_cmd_wait(%struct.mthca_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mthca_cmd_context*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @down(i32* %21)
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %24 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %36, align 8
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %39 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %37, i64 %41
  store %struct.mthca_cmd_context* %42, %struct.mthca_cmd_context** %18, align 8
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %49 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %55 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %58 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %65 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %64, i32 0, i32 4
  %66 = call i32 @init_completion(i32* %65)
  %67 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %8
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %81 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mthca_cmd_post(%struct.mthca_dev* %67, i32 %68, i32 %76, i32 %77, i32 %78, i32 %79, i32 %82, i32 1)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %128

87:                                               ; preds = %75
  %88 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %89 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %88, i32 0, i32 4
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @wait_for_completion_timeout(i32* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %17, align 4
  br label %128

96:                                               ; preds = %87
  %97 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %98 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %128

103:                                              ; preds = %96
  %104 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %105 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %112 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @mthca_dbg(%struct.mthca_dev* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %113)
  %115 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %116 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @mthca_status_to_errno(i64 %117)
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %108, %103
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %124 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %102, %93, %86
  %129 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %130 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %134 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %138 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %18, align 8
  %140 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %141 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %142, align 8
  %144 = ptrtoint %struct.mthca_cmd_context* %139 to i64
  %145 = ptrtoint %struct.mthca_cmd_context* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 32
  %148 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %149 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  %151 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %152 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %156 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = call i32 @up(i32* %157)
  %159 = load i32, i32* %17, align 4
  ret i32 %159
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mthca_cmd_post(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i32, i64) #1

declare dso_local i32 @mthca_status_to_errno(i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
