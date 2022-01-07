; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp45.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.decode_cache }
%struct.decode_cache = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.x86_emulate_ops = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @emulate_grp45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_grp45(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca %struct.x86_emulate_ops*, align 8
  %5 = alloca %struct.decode_cache*, align 8
  %6 = alloca i64, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %4, align 8
  %7 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %7, i32 0, i32 1
  store %struct.decode_cache* %8, %struct.decode_cache** %5, align 8
  %9 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %10 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %54 [
    i32 0, label %12
    i32 1, label %20
    i32 2, label %28
    i32 4, label %44
    i32 6, label %51
  ]

12:                                               ; preds = %2
  %13 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %14 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @emulate_1op(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %22 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %25 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @emulate_1op(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %30 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %33 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %37 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %40 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %43 = call i32 @emulate_push(%struct.x86_emulate_ctxt* %42)
  br label %54

44:                                               ; preds = %2
  %45 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %46 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %50 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %54

51:                                               ; preds = %2
  %52 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %53 = call i32 @emulate_push(%struct.x86_emulate_ctxt* %52)
  br label %54

54:                                               ; preds = %2, %51, %44, %28, %20, %12
  %55 = load i32, i32* @X86EMUL_CONTINUE, align 4
  ret i32 %55
}

declare dso_local i32 @emulate_1op(i8*, i32, i32) #1

declare dso_local i32 @emulate_push(%struct.x86_emulate_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
