; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_commit_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_commit_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.dm_exception = type { i32, i32 }
%struct.pstore = type { i64, i32, i64, i32, %struct.commit_callback*, i64, i32 }
%struct.commit_callback = type { void (i8*, i32)*, i8* }
%struct.core_exception = type { i32, i32 }

@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_exception_store*, %struct.dm_exception*, void (i8*, i32)*, i8*)* @persistent_commit_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persistent_commit_exception(%struct.dm_exception_store* %0, %struct.dm_exception* %1, void (i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca void (i8*, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pstore*, align 8
  %11 = alloca %struct.core_exception, align 4
  %12 = alloca %struct.commit_callback*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store %struct.dm_exception* %1, %struct.dm_exception** %6, align 8
  store void (i8*, i32)* %2, void (i8*, i32)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %14 = call %struct.pstore* @get_info(%struct.dm_exception_store* %13)
  store %struct.pstore* %14, %struct.pstore** %10, align 8
  %15 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %16 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %20 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.pstore*, %struct.pstore** %10, align 8
  %24 = load %struct.pstore*, %struct.pstore** %10, align 8
  %25 = getelementptr inbounds %struct.pstore, %struct.pstore* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = trunc i64 %26 to i32
  %29 = call i32 @write_exception(%struct.pstore* %23, i32 %28, %struct.core_exception* %11)
  %30 = load %struct.pstore*, %struct.pstore** %10, align 8
  %31 = getelementptr inbounds %struct.pstore, %struct.pstore* %30, i32 0, i32 4
  %32 = load %struct.commit_callback*, %struct.commit_callback** %31, align 8
  %33 = load %struct.pstore*, %struct.pstore** %10, align 8
  %34 = getelementptr inbounds %struct.pstore, %struct.pstore* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %32, i64 %37
  store %struct.commit_callback* %38, %struct.commit_callback** %12, align 8
  %39 = load void (i8*, i32)*, void (i8*, i32)** %7, align 8
  %40 = load %struct.commit_callback*, %struct.commit_callback** %12, align 8
  %41 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %40, i32 0, i32 0
  store void (i8*, i32)* %39, void (i8*, i32)** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.commit_callback*, %struct.commit_callback** %12, align 8
  %44 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.pstore*, %struct.pstore** %10, align 8
  %46 = getelementptr inbounds %struct.pstore, %struct.pstore* %45, i32 0, i32 6
  %47 = call i32 @atomic_dec_and_test(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %4
  %50 = load %struct.pstore*, %struct.pstore** %10, align 8
  %51 = getelementptr inbounds %struct.pstore, %struct.pstore* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pstore*, %struct.pstore** %10, align 8
  %54 = getelementptr inbounds %struct.pstore, %struct.pstore* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %136

58:                                               ; preds = %49, %4
  %59 = load %struct.pstore*, %struct.pstore** %10, align 8
  %60 = getelementptr inbounds %struct.pstore, %struct.pstore* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pstore*, %struct.pstore** %10, align 8
  %63 = getelementptr inbounds %struct.pstore, %struct.pstore* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.pstore*, %struct.pstore** %10, align 8
  %68 = load %struct.pstore*, %struct.pstore** %10, align 8
  %69 = getelementptr inbounds %struct.pstore, %struct.pstore* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i64 @zero_disk_area(%struct.pstore* %67, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.pstore*, %struct.pstore** %10, align 8
  %76 = getelementptr inbounds %struct.pstore, %struct.pstore* %75, i32 0, i32 3
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %66, %58
  %78 = load %struct.pstore*, %struct.pstore** %10, align 8
  %79 = getelementptr inbounds %struct.pstore, %struct.pstore* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.pstore*, %struct.pstore** %10, align 8
  %84 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %85 = call i64 @area_io(%struct.pstore* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.pstore*, %struct.pstore** %10, align 8
  %89 = getelementptr inbounds %struct.pstore, %struct.pstore* %88, i32 0, i32 3
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82, %77
  %91 = load %struct.pstore*, %struct.pstore** %10, align 8
  %92 = getelementptr inbounds %struct.pstore, %struct.pstore* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pstore*, %struct.pstore** %10, align 8
  %95 = getelementptr inbounds %struct.pstore, %struct.pstore* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.pstore*, %struct.pstore** %10, align 8
  %100 = getelementptr inbounds %struct.pstore, %struct.pstore* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.pstore*, %struct.pstore** %10, align 8
  %102 = getelementptr inbounds %struct.pstore, %struct.pstore* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.pstore*, %struct.pstore** %10, align 8
  %106 = call i32 @zero_memory_area(%struct.pstore* %105)
  br label %107

107:                                              ; preds = %98, %90
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.pstore*, %struct.pstore** %10, align 8
  %111 = getelementptr inbounds %struct.pstore, %struct.pstore* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %108
  %115 = load %struct.pstore*, %struct.pstore** %10, align 8
  %116 = getelementptr inbounds %struct.pstore, %struct.pstore* %115, i32 0, i32 4
  %117 = load %struct.commit_callback*, %struct.commit_callback** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %117, i64 %119
  store %struct.commit_callback* %120, %struct.commit_callback** %12, align 8
  %121 = load %struct.commit_callback*, %struct.commit_callback** %12, align 8
  %122 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %121, i32 0, i32 0
  %123 = load void (i8*, i32)*, void (i8*, i32)** %122, align 8
  %124 = load %struct.commit_callback*, %struct.commit_callback** %12, align 8
  %125 = getelementptr inbounds %struct.commit_callback, %struct.commit_callback* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.pstore*, %struct.pstore** %10, align 8
  %128 = getelementptr inbounds %struct.pstore, %struct.pstore* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  call void %123(i8* %126, i32 %129)
  br label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %108

133:                                              ; preds = %108
  %134 = load %struct.pstore*, %struct.pstore** %10, align 8
  %135 = getelementptr inbounds %struct.pstore, %struct.pstore* %134, i32 0, i32 1
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %57
  ret void
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @write_exception(%struct.pstore*, i32, %struct.core_exception*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @zero_disk_area(%struct.pstore*, i64) #1

declare dso_local i64 @area_io(%struct.pstore*, i32) #1

declare dso_local i32 @zero_memory_area(%struct.pstore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
