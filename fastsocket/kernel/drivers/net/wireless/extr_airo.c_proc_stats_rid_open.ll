; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_stats_rid_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_stats_rid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.proc_data = type { i32, i32* }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@statsLabels = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Potentially disasterous buffer overflow averted!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Got a short rid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32)* @proc_stats_rid_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_stats_rid_open(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_data*, align 8
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.airo_info*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.proc_dir_entry* @PDE(%struct.inode* %17)
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %9, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %20 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %10, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.airo_info*, %struct.airo_info** %23, align 8
  store %struct.airo_info* %24, %struct.airo_info** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 16, i32 %27)
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %3
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.proc_data*
  store %struct.proc_data* %39, %struct.proc_data** %8, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc(i32 4096, i32 %40)
  %42 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %43 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = icmp eq i32* %41, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %141

52:                                               ; preds = %35
  %53 = load %struct.airo_info*, %struct.airo_info** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @readStatsRid(%struct.airo_info* %53, %struct.TYPE_5__* %12, i32 %54, i32 1)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %122, %52
  %60 = load i8**, i8*** @statsLabels, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, inttoptr (i64 -1 to i8*)
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %67, 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %66, %59
  %72 = phi i1 [ false, %59 ], [ %70, %66 ]
  br i1 %72, label %73, label %125

73:                                               ; preds = %71
  %74 = load i8**, i8*** @statsLabels, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %122

81:                                               ; preds = %73
  %82 = load i32, i32* %14, align 4
  %83 = load i8**, i8*** @statsLabels, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = add nsw i32 %82, %88
  %90 = add nsw i32 %89, 16
  %91 = icmp sgt i32 %90, 4096
  br i1 %91, label %92, label %99

92:                                               ; preds = %81
  %93 = load %struct.airo_info*, %struct.airo_info** %11, align 8
  %94 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @airo_print_warn(i32 %97, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %125

99:                                               ; preds = %81
  %100 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %101 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i8**, i8*** @statsLabels, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = call i64 @sprintf(i32* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %110, i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %99, %80
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %59

125:                                              ; preds = %92, %71
  %126 = load i32, i32* %13, align 4
  %127 = mul nsw i32 %126, 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.airo_info*, %struct.airo_info** %11, align 8
  %132 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @airo_print_warn(i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %130, %125
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %140 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %45, %32
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @readStatsRid(%struct.airo_info*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @airo_print_warn(i32, i8*) #1

declare dso_local i64 @sprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
