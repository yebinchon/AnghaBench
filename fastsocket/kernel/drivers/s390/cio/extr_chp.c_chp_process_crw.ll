; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_process_crw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_process_crw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crw = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.chp_id = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"CRW reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"solicited machine check for channel path %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Don't know how to handle erc=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crw*, %struct.crw*, i32)* @chp_process_crw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chp_process_crw(%struct.crw* %0, %struct.crw* %1, i32 %2) #0 {
  %4 = alloca %struct.crw*, align 8
  %5 = alloca %struct.crw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chp_id, align 4
  store %struct.crw* %0, %struct.crw** %4, align 8
  store %struct.crw* %1, %struct.crw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 (...) @css_schedule_eval_all()
  br label %76

12:                                               ; preds = %3
  %13 = load %struct.crw*, %struct.crw** %4, align 8
  %14 = getelementptr inbounds %struct.crw, %struct.crw* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.crw*, %struct.crw** %4, align 8
  %18 = getelementptr inbounds %struct.crw, %struct.crw* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.crw*, %struct.crw** %4, align 8
  %21 = getelementptr inbounds %struct.crw, %struct.crw* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.crw*, %struct.crw** %4, align 8
  %24 = getelementptr inbounds %struct.crw, %struct.crw* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.crw*, %struct.crw** %4, align 8
  %27 = getelementptr inbounds %struct.crw, %struct.crw* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.crw*, %struct.crw** %4, align 8
  %30 = getelementptr inbounds %struct.crw, %struct.crw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.crw*, %struct.crw** %4, align 8
  %33 = getelementptr inbounds %struct.crw, %struct.crw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.crw*, %struct.crw** %4, align 8
  %37 = getelementptr inbounds %struct.crw, %struct.crw* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %12
  %41 = load %struct.crw*, %struct.crw** %4, align 8
  %42 = getelementptr inbounds %struct.crw, %struct.crw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %76

45:                                               ; preds = %12
  %46 = call i32 @chp_id_init(%struct.chp_id* %7)
  %47 = load %struct.crw*, %struct.crw** %4, align 8
  %48 = getelementptr inbounds %struct.crw, %struct.crw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.crw*, %struct.crw** %4, align 8
  %52 = getelementptr inbounds %struct.crw, %struct.crw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %71 [
    i32 130, label %54
    i32 129, label %67
    i32 128, label %67
  ]

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @chp_is_registered(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @chp_new(i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @chsc_chp_online(i32 %65)
  br label %76

67:                                               ; preds = %45, %45
  %68 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @chsc_chp_offline(i32 %69)
  br label %76

71:                                               ; preds = %45
  %72 = load %struct.crw*, %struct.crw** %4, align 8
  %73 = getelementptr inbounds %struct.crw, %struct.crw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, i32, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %10, %40, %71, %67, %63
  ret void
}

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, ...) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @chp_is_registered(i32) #1

declare dso_local i32 @chp_new(i32) #1

declare dso_local i32 @chsc_chp_online(i32) #1

declare dso_local i32 @chsc_chp_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
