; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_APList_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_APList_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.proc_data = type { i8*, i32, i32, i32, i32*, i64 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_3__ = type { i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_APList_on_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Not using specific APs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_APList_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_APList_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.airo_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.proc_dir_entry* @PDE(%struct.inode* %13)
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %7, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %16 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.airo_info*, %struct.airo_info** %19, align 8
  store %struct.airo_info* %20, %struct.airo_info** %9, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 40, i32 %21)
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %135

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.proc_data*
  store %struct.proc_data* %33, %struct.proc_data** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 104, i32 %34)
  %36 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %37 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = icmp eq i8* %35, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %135

46:                                               ; preds = %29
  %47 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %48 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %50 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %49, i32 0, i32 1
  store i32 72, i32* %50, align 8
  %51 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %52 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %58 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = icmp eq i32* %56, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %46
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
  br label %135

71:                                               ; preds = %46
  %72 = load i32, i32* @proc_APList_on_close, align 4
  %73 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %74 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %76 = call i32 @readAPListRid(%struct.airo_info* %75, %struct.TYPE_3__* %12)
  %77 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %78 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %115, %71
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  br label %118

103:                                              ; preds = %92, %83
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %110)
  %112 = load i8*, i8** %11, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %80

118:                                              ; preds = %102, %80
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i8*, i8** %11, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %11, align 8
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i8*, i8** %11, align 8
  store i8 0, i8* %128, align 1
  %129 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %130 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %134 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %127, %60, %39, %26
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @readAPListRid(%struct.airo_info*, %struct.TYPE_3__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
