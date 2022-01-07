; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_handle_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_handle_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_aib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.etr_eacr = type { i32, i64, i64, i32, i32, i32 }

@etr_port0_uptodate = common dso_local global i32 0, align 4
@etr_port0 = common dso_local global %struct.etr_aib zeroinitializer, align 8
@etr_port0_online = common dso_local global i64 0, align 8
@etr_port1_uptodate = common dso_local global i32 0, align 4
@etr_port1 = common dso_local global %struct.etr_aib zeroinitializer, align 8
@etr_steai_available = common dso_local global i64 0, align 8
@ETR_STEAI_PORT_0 = common dso_local global i32 0, align 4
@ETR_STEAI_PORT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_eacr*, %struct.etr_aib*, %struct.etr_eacr*)* @etr_handle_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_handle_update(%struct.etr_eacr* noalias sret %0, %struct.etr_aib* %1, %struct.etr_eacr* byval(%struct.etr_eacr) align 8 %2) #0 {
  %4 = alloca %struct.etr_aib*, align 8
  store %struct.etr_aib* %1, %struct.etr_aib** %4, align 8
  %5 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = bitcast %struct.etr_eacr* %0 to i8*
  %14 = bitcast %struct.etr_eacr* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  br label %109

15:                                               ; preds = %8, %3
  %16 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %17 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @etr_port0_uptodate, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %30 = bitcast %struct.etr_aib* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.etr_aib* @etr_port0 to i8*), i8* align 8 %30, i64 8, i1 false)
  %31 = load i64, i64* @etr_port0_online, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* @etr_port0_uptodate, align 4
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %25, %21
  br label %51

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @etr_port1_uptodate, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %45 = bitcast %struct.etr_aib* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.etr_aib* @etr_port1 to i8*), i8* align 8 %45, i64 8, i1 false)
  %46 = load i64, i64* @etr_port0_online, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* @etr_port1_uptodate, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %40, %36
  br label %51

51:                                               ; preds = %50, %35
  %52 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 (...) @check_sync_clock()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %51
  %59 = bitcast %struct.etr_eacr* %0 to i8*
  %60 = bitcast %struct.etr_eacr* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 40, i1 false)
  br label %109

61:                                               ; preds = %55
  %62 = load i64, i64* @etr_steai_available, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @etr_port0_uptodate, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @ETR_STEAI_PORT_0, align 4
  %73 = call i32 @etr_steai_cv(%struct.etr_aib* @etr_port0, i32 %72)
  store i32 1, i32* @etr_port0_uptodate, align 4
  br label %74

74:                                               ; preds = %71, %68, %64
  %75 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @etr_port1_uptodate, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ETR_STEAI_PORT_1, align 4
  %83 = call i32 @etr_steai_cv(%struct.etr_aib* @etr_port1, i32 %82)
  store i32 1, i32* @etr_port1_uptodate, align 4
  br label %84

84:                                               ; preds = %81, %78, %74
  br label %106

85:                                               ; preds = %61
  %86 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @etr_port0_uptodate, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89, %85
  %93 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32, i32* @etr_port1_uptodate, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %89
  %100 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = xor i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %105

103:                                              ; preds = %96, %92
  %104 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %2, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %84
  %107 = bitcast %struct.etr_eacr* %0 to i8*
  %108 = bitcast %struct.etr_eacr* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 40, i1 false)
  br label %109

109:                                              ; preds = %106, %58, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @check_sync_clock(...) #2

declare dso_local i32 @etr_steai_cv(%struct.etr_aib*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
