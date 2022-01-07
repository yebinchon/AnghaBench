; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_res_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_res_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_area = type { i32, i32, i32, i32 }
%struct.chp_link = type { i32, i32, %struct.chp_id }
%struct.chp_id = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"chsc: resource accessibility event (rs=%02x, rs_id=%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_area*)* @chsc_process_sei_res_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_res_acc(%struct.chsc_sei_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_area*, align 8
  %3 = alloca %struct.chp_link, align 4
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca i32, align 4
  store %struct.chsc_sei_area* %0, %struct.chsc_sei_area** %2, align 8
  %6 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %7 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %10 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %14 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %65

18:                                               ; preds = %1
  %19 = call i32 @chp_id_init(%struct.chp_id* %4)
  %20 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %21 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @chp_get_status(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @chp_new(i32 %31)
  br label %38

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %65

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %29
  %39 = call i32 @memset(%struct.chp_link* %3, i32 0, i32 12)
  %40 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %3, i32 0, i32 2
  %41 = bitcast %struct.chp_id* %40 to i8*
  %42 = bitcast %struct.chp_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %44 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 192
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %38
  %49 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %50 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %3, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %54 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 192
  %57 = icmp eq i32 %56, 192
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %3, i32 0, i32 0
  store i32 65535, i32* %59, align 4
  br label %62

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %3, i32 0, i32 0
  store i32 65280, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %38
  %64 = call i32 @s390_process_res_acc(%struct.chp_link* %3)
  br label %65

65:                                               ; preds = %63, %36, %17
  ret void
}

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @chp_get_status(i32) #1

declare dso_local i32 @chp_new(i32) #1

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @s390_process_res_acc(%struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
