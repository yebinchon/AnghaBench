; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_tid_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_tid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i64*, %union.aopen_entry*, %union.aopen_entry*, i32, i64, i64, i32, i32, %struct.serv_entry*, i32* }
%union.aopen_entry = type { %union.aopen_entry* }
%struct.serv_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_info*)* @tid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_init(%struct.tid_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tid_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %3, align 8
  %6 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %7 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %10 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = add i64 %13, %16
  %18 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %17, %22
  %24 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BITS_TO_LONGS(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = add i64 %23, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32* @t4_alloc_mem(i64 %31)
  %33 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %34 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %33, i32 0, i32 12
  store i32* %32, i32** %34, align 8
  %35 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %36 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %35, i32 0, i32 12
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %126

42:                                               ; preds = %1
  %43 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %44 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %43, i32 0, i32 12
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %47 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = bitcast i32* %50 to %union.aopen_entry*
  %52 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 4
  store %union.aopen_entry* %51, %union.aopen_entry** %53, align 8
  %54 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %55 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %54, i32 0, i32 4
  %56 = load %union.aopen_entry*, %union.aopen_entry** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %union.aopen_entry, %union.aopen_entry* %56, i64 %58
  %60 = bitcast %union.aopen_entry* %59 to %struct.serv_entry*
  %61 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %62 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %61, i32 0, i32 11
  store %struct.serv_entry* %60, %struct.serv_entry** %62, align 8
  %63 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %64 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %63, i32 0, i32 11
  %65 = load %struct.serv_entry*, %struct.serv_entry** %64, align 8
  %66 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %67 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.serv_entry, %struct.serv_entry* %65, i64 %69
  %71 = bitcast %struct.serv_entry* %70 to i64*
  %72 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %73 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %72, i32 0, i32 3
  store i64* %71, i64** %73, align 8
  %74 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %75 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %74, i32 0, i32 10
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %78 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %77, i32 0, i32 9
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %81 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %83 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %82, i32 0, i32 5
  store %union.aopen_entry* null, %union.aopen_entry** %83, align 8
  %84 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %85 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %87 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %86, i32 0, i32 6
  %88 = call i32 @atomic_set(i32* %87, i32 0)
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %42
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %98 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %97, i32 0, i32 4
  %99 = load %union.aopen_entry*, %union.aopen_entry** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %union.aopen_entry, %union.aopen_entry* %99, i64 %101
  %103 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %104 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %103, i32 0, i32 4
  %105 = load %union.aopen_entry*, %union.aopen_entry** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %union.aopen_entry, %union.aopen_entry* %105, i64 %108
  %110 = bitcast %union.aopen_entry* %109 to %union.aopen_entry**
  store %union.aopen_entry* %102, %union.aopen_entry** %110, align 8
  br label %92

111:                                              ; preds = %92
  %112 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %113 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %112, i32 0, i32 4
  %114 = load %union.aopen_entry*, %union.aopen_entry** %113, align 8
  %115 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %116 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %115, i32 0, i32 5
  store %union.aopen_entry* %114, %union.aopen_entry** %116, align 8
  br label %117

117:                                              ; preds = %111, %42
  %118 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %119 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %122 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = call i32 @bitmap_zero(i64* %120, i64 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %117, %39
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32* @t4_alloc_mem(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
