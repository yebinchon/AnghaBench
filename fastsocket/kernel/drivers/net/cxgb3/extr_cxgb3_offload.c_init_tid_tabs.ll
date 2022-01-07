; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_init_tid_tabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_init_tid_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32, i32, %union.active_open_entry*, %union.active_open_entry*, %union.listen_entry*, %union.listen_entry*, i32, i32, i32, i64, i64, i32* }
%union.active_open_entry = type { %union.active_open_entry* }
%union.listen_entry = type { %union.listen_entry* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_info*, i32, i32, i32, i32, i32)* @init_tid_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tid_tabs(%struct.tid_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.tid_info* %0, %struct.tid_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = add i64 %17, %20
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32* @cxgb_alloc_mem(i64 %26)
  %28 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %29 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %28, i32 0, i32 14
  store i32* %27, i32** %29, align 8
  %30 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %31 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %30, i32 0, i32 14
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %146

37:                                               ; preds = %6
  %38 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %39 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %38, i32 0, i32 14
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to %union.listen_entry*
  %45 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %46 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %45, i32 0, i32 7
  store %union.listen_entry* %44, %union.listen_entry** %46, align 8
  %47 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %48 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %47, i32 0, i32 7
  %49 = load %union.listen_entry*, %union.listen_entry** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %49, i64 %51
  %53 = bitcast %union.listen_entry* %52 to %union.active_open_entry*
  %54 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %55 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %54, i32 0, i32 5
  store %union.active_open_entry* %53, %union.active_open_entry** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %58 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %61 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %64 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %66 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %65, i32 0, i32 8
  store %union.listen_entry* null, %union.listen_entry** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %69 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %72 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %74 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %73, i32 0, i32 6
  store %union.active_open_entry* null, %union.active_open_entry** %74, align 8
  %75 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %76 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %78 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  %79 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %80 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %79, i32 0, i32 11
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  %82 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %83 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %82, i32 0, i32 10
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %86 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %85, i32 0, i32 9
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %37
  br label %91

91:                                               ; preds = %95, %90
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %97 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %96, i32 0, i32 7
  %98 = load %union.listen_entry*, %union.listen_entry** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %98, i64 %100
  %102 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %103 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %102, i32 0, i32 7
  %104 = load %union.listen_entry*, %union.listen_entry** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sub i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %104, i64 %107
  %109 = bitcast %union.listen_entry* %108 to %union.listen_entry**
  store %union.listen_entry* %101, %union.listen_entry** %109, align 8
  br label %91

110:                                              ; preds = %91
  %111 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %112 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %111, i32 0, i32 7
  %113 = load %union.listen_entry*, %union.listen_entry** %112, align 8
  %114 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %115 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %114, i32 0, i32 8
  store %union.listen_entry* %113, %union.listen_entry** %115, align 8
  br label %116

116:                                              ; preds = %110, %37
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, -1
  store i32 %122, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %126 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %125, i32 0, i32 5
  %127 = load %union.active_open_entry*, %union.active_open_entry** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %union.active_open_entry, %union.active_open_entry* %127, i64 %129
  %131 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %132 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %131, i32 0, i32 5
  %133 = load %union.active_open_entry*, %union.active_open_entry** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sub i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %union.active_open_entry, %union.active_open_entry* %133, i64 %136
  %138 = bitcast %union.active_open_entry* %137 to %union.active_open_entry**
  store %union.active_open_entry* %130, %union.active_open_entry** %138, align 8
  br label %120

139:                                              ; preds = %120
  %140 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %141 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %140, i32 0, i32 5
  %142 = load %union.active_open_entry*, %union.active_open_entry** %141, align 8
  %143 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %144 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %143, i32 0, i32 6
  store %union.active_open_entry* %142, %union.active_open_entry** %144, align 8
  br label %145

145:                                              ; preds = %139, %116
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %34
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32* @cxgb_alloc_mem(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
