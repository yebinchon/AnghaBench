; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_update_eacr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_update_eacr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_eacr = type { i64, i64, i32 }

@etr_eacr = common dso_local global %struct.etr_eacr zeroinitializer, align 8
@etr_tolec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_eacr*)* @etr_update_eacr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = call i64 @memcmp(%struct.etr_eacr* @etr_eacr, %struct.etr_eacr* %0, i32 24)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.etr_eacr, %struct.etr_eacr* @etr_eacr, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %7, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* getelementptr inbounds (%struct.etr_eacr, %struct.etr_eacr* @etr_eacr, i32 0, i32 1), align 8
  %13 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %0, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* getelementptr inbounds (%struct.etr_eacr, %struct.etr_eacr* @etr_eacr, i32 0, i32 2), align 8
  %18 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %16, %11, %6
  %23 = phi i1 [ true, %11 ], [ true, %6 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  %25 = bitcast %struct.etr_eacr* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.etr_eacr* @etr_eacr to i8*), i8* align 8 %25, i64 24, i1 false)
  %26 = call i32 @etr_setr(%struct.etr_eacr* @etr_eacr)
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @get_clock()
  store i32 %30, i32* @etr_tolec, align 4
  br label %31

31:                                               ; preds = %5, %29, %22
  ret void
}

declare dso_local i64 @memcmp(%struct.etr_eacr*, %struct.etr_eacr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @etr_setr(%struct.etr_eacr*) #1

declare dso_local i32 @get_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
