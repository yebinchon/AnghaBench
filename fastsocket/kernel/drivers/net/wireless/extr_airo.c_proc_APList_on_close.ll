; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_APList_on_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_APList_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.proc_data = type { i32, i64* }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_4__ = type { i32**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_APList_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_APList_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.airo_info*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.proc_data*
  store %struct.proc_data* %15, %struct.proc_data** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.proc_dir_entry* @PDE(%struct.inode* %16)
  store %struct.proc_dir_entry* %17, %struct.proc_dir_entry** %6, align 8
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.airo_info*, %struct.airo_info** %22, align 8
  store %struct.airo_info* %23, %struct.airo_info** %8, align 8
  %24 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %25 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %133

29:                                               ; preds = %2
  %30 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 16)
  %31 = call i32 @cpu_to_le16(i32 16)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %123, %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %38 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %41, 6
  %43 = mul nsw i32 %42, 3
  %44 = icmp sge i32 %39, %43
  br label %45

45:                                               ; preds = %36, %33
  %46 = phi i1 [ false, %33 ], [ %44, %36 ]
  br i1 %46, label %47, label %126

47:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %119, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 18
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %53 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %56, 6
  %58 = mul nsw i32 %57, 3
  %59 = add nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %54, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %51, %48
  %65 = phi i1 [ false, %48 ], [ %63, %51 ]
  br i1 %65, label %66, label %122

66:                                               ; preds = %64
  %67 = load i32, i32* %11, align 4
  %68 = srem i32 %67, 3
  switch i32 %68, label %118 [
    i32 0, label %69
    i32 1, label %93
  ]

69:                                               ; preds = %66
  %70 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %71 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %74, 6
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %72, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @hexVal(i64 %80)
  %82 = shl i32 %81, 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sdiv i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %82, i32* %92, align 4
  br label %118

93:                                               ; preds = %66
  %94 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %95 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = mul nsw i32 %98, 6
  %100 = mul nsw i32 %99, 3
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %96, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @hexVal(i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sdiv i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %105
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %66, %93, %69
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %48

122:                                              ; preds = %64
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %33

126:                                              ; preds = %45
  %127 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %128 = call i32 @disable_MAC(%struct.airo_info* %127, i32 1)
  %129 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %130 = call i32 @writeAPListRid(%struct.airo_info* %129, %struct.TYPE_4__* %9, i32 1)
  %131 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %132 = call i32 @enable_MAC(%struct.airo_info* %131, i32 1)
  br label %133

133:                                              ; preds = %126, %28
  ret void
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hexVal(i64) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeAPListRid(%struct.airo_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
