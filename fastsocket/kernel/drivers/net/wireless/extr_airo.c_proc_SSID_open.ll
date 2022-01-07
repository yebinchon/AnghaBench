; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_SSID_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_SSID_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.proc_data = type { i8*, i32, i32, i32, i32*, i64 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_SSID_on_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_SSID_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_SSID_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.airo_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
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
  br label %151

31:                                               ; preds = %2
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.proc_data*
  store %struct.proc_data* %35, %struct.proc_data** %6, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 104, i32 %36)
  %38 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %39 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = icmp eq i8* %37, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %151

48:                                               ; preds = %31
  %49 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %50 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %52 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %51, i32 0, i32 1
  store i32 99, i32* %52, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kzalloc(i32 100, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %57 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = icmp eq i32* %55, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %61 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %151

70:                                               ; preds = %48
  %71 = load i32, i32* @proc_SSID_on_close, align 4
  %72 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %73 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %75 = call i32 @readSsidRid(%struct.airo_info* %74, %struct.TYPE_5__* %12)
  %76 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %77 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %140, %70
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %143

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @le16_to_cpu(i32 %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %143

94:                                               ; preds = %82
  %95 = load i64, i64* %14, align 8
  %96 = icmp ugt i64 %95, 32
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i64 32, i64* %14, align 8
  br label %98

98:                                               ; preds = %97, %94
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %134, %98
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %14, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %104, %99
  %118 = phi i1 [ false, %99 ], [ %116, %104 ]
  br i1 %118, label %119, label %137

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %11, align 8
  store i8 %131, i8* %132, align 1
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %99

137:                                              ; preds = %117
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %11, align 8
  store i8 10, i8* %138, align 1
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %79

143:                                              ; preds = %93, %79
  %144 = load i8*, i8** %11, align 8
  store i8 0, i8* %144, align 1
  %145 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %146 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %150 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %59, %41, %28
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @readSsidRid(%struct.airo_info*, %struct.TYPE_5__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
