; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_SSID_on_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_SSID_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.proc_data = type { i8*, i32 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_SSID_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_SSID_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.airo_info*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.proc_data*
  store %struct.proc_data* %17, %struct.proc_data** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.proc_dir_entry* @PDE(%struct.inode* %18)
  store %struct.proc_dir_entry* %19, %struct.proc_dir_entry** %6, align 8
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %21 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.airo_info*, %struct.airo_info** %24, align 8
  store %struct.airo_info* %25, %struct.airo_info** %8, align 8
  %26 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %27 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %31 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %12, align 8
  %35 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %36 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  br label %116

40:                                               ; preds = %2
  %41 = load i8*, i8** %12, align 8
  store i8 10, i8* %41, align 1
  %42 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 16)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %100, %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ult i8* %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %103

52:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 32
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %67, i32* %78, align 4
  br label %53

79:                                               ; preds = %61
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %98, %83
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 10
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %92

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %43

103:                                              ; preds = %82, %50
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call i8* @cpu_to_le16(i32 16)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %111 = call i32 @disable_MAC(%struct.airo_info* %110, i32 1)
  %112 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %113 = call i32 @writeSsidRid(%struct.airo_info* %112, %struct.TYPE_6__* %9, i32 1)
  %114 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %115 = call i32 @enable_MAC(%struct.airo_info* %114, i32 1)
  br label %116

116:                                              ; preds = %109, %39
  ret void
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeSsidRid(%struct.airo_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
