; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_retrieve_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_retrieve_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { i64, i8** }
%struct.bcom_bd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bcom_task*, i32*, %struct.bcom_bd**)* @bcom_retrieve_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bcom_retrieve_buffer(%struct.bcom_task* %0, i32* %1, %struct.bcom_bd** %2) #0 {
  %4 = alloca %struct.bcom_task*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bcom_bd**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bcom_bd*, align 8
  store %struct.bcom_task* %0, %struct.bcom_task** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.bcom_bd** %2, %struct.bcom_bd*** %6, align 8
  %9 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %10 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %13 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %18 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %19 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task* %17, i64 %20)
  store %struct.bcom_bd* %21, %struct.bcom_bd** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.bcom_bd*, %struct.bcom_bd** %8, align 8
  %26 = getelementptr inbounds %struct.bcom_bd, %struct.bcom_bd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.bcom_bd**, %struct.bcom_bd*** %6, align 8
  %31 = icmp ne %struct.bcom_bd** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.bcom_bd*, %struct.bcom_bd** %8, align 8
  %34 = load %struct.bcom_bd**, %struct.bcom_bd*** %6, align 8
  store %struct.bcom_bd* %33, %struct.bcom_bd** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %37 = call i64 @_bcom_next_outdex(%struct.bcom_task* %36)
  %38 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  %39 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** %7, align 8
  ret i8* %40
}

declare dso_local %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task*, i64) #1

declare dso_local i64 @_bcom_next_outdex(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
