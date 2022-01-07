; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_debugfs.c_lbs_debugfs_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_debugfs.c_lbs_debugfs_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_debugfs_files = type { i32, i32, i32 }
%struct.lbs_private = type { i8*, i8**, i8*, i8*, i8**, i8** }
%struct.net_device = type { i8* }

@lbs_dir = common dso_local global i8* null, align 8
@debugfs_files = common dso_local global %struct.lbs_debugfs_files* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"subscribed_events\00", align 1
@debugfs_events_files = common dso_local global %struct.lbs_debugfs_files* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@debugfs_regs_files = common dso_local global %struct.lbs_debugfs_files* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_debugfs_init_one(%struct.lbs_private* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbs_debugfs_files*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load i8*, i8** @lbs_dir, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %147

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @lbs_dir, align 8
  %15 = call i8* @debugfs_create_dir(i8* %13, i8* %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %147

23:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_files, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_files, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %30, i64 %32
  store %struct.lbs_debugfs_files* %33, %struct.lbs_debugfs_files** %6, align 8
  %34 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %35 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %38 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %44 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %45 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %44, i32 0, i32 0
  %46 = call i8* @debugfs_create_file(i32 %36, i32 %39, i8* %42, %struct.lbs_private* %43, i32* %45)
  %47 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 5
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %46, i8** %52, align 8
  br label %53

53:                                               ; preds = %29
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %147

68:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_events_files, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_events_files, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %75, i64 %77
  store %struct.lbs_debugfs_files* %78, %struct.lbs_debugfs_files** %6, align 8
  %79 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %80 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %83 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %86 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %89 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %90 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %89, i32 0, i32 0
  %91 = call i8* @debugfs_create_file(i32 %81, i32 %84, i8* %87, %struct.lbs_private* %88, i32* %90)
  %92 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 4
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %91, i8** %97, align 8
  br label %98

98:                                               ; preds = %74
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %69

101:                                              ; preds = %69
  %102 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  %106 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %109 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %101
  br label %147

113:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %143, %113
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_regs_files, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %114
  %120 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_regs_files, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %120, i64 %122
  store %struct.lbs_debugfs_files* %123, %struct.lbs_debugfs_files** %6, align 8
  %124 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %125 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %128 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %131 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %134 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %135 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %134, i32 0, i32 0
  %136 = call i8* @debugfs_create_file(i32 %126, i32 %129, i8* %132, %struct.lbs_private* %133, i32* %135)
  %137 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %138 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  br label %143

143:                                              ; preds = %119
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %114

146:                                              ; preds = %114
  br label %147

147:                                              ; preds = %146, %112, %67, %22, %9
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lbs_debugfs_files*) #1

declare dso_local i8* @debugfs_create_file(i32, i32, i8*, %struct.lbs_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
