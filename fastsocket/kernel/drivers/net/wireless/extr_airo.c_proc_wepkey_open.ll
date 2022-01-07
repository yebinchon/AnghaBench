; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_wepkey_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_wepkey_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.proc_data = type { i8*, i32, i32, i32, i32*, i64 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_wepkey_on_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No wep keys\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Tx key = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Key %d set with length = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_wepkey_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_wepkey_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.airo_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.proc_dir_entry* @PDE(%struct.inode* %15)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %7, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.airo_info*, %struct.airo_info** %21, align 8
  store %struct.airo_info* %22, %struct.airo_info** %9, align 8
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 40, i32 %23)
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = icmp eq i8* %24, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %145

31:                                               ; preds = %2
  %32 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 24)
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.proc_data*
  store %struct.proc_data* %36, %struct.proc_data** %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 180, i32 %37)
  %39 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %40 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = icmp eq i8* %38, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %145

49:                                               ; preds = %31
  %50 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %51 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %53 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %52, i32 0, i32 1
  store i32 80, i32* %53, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 80, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %58 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = icmp eq i32* %56, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %62 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %145

71:                                               ; preds = %49
  %72 = load i32, i32* @proc_wepkey_on_close, align 4
  %73 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %74 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %76 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %81 = call i32 @readWepKeyRid(%struct.airo_info* %80, %struct.TYPE_4__* %11, i32 1, i32 1)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SUCCESS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %138

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %135, %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @cpu_to_le16(i32 65535)
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %13, align 4
  br label %124

108:                                              ; preds = %86
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @le16_to_cpu(i64 %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @le16_to_cpu(i64 %117)
  %119 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %108, %93
  %125 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %126 = call i32 @readWepKeyRid(%struct.airo_info* %125, %struct.TYPE_4__* %11, i32 0, i32 1)
  br label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 150
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi i1 [ false, %127 ], [ %134, %132 ]
  br i1 %136, label %86, label %137

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137, %71
  %139 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %140 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %144 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %60, %42, %28
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @readWepKeyRid(%struct.airo_info*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
