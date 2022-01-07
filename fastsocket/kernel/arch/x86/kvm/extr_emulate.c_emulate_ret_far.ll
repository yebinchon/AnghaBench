; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_ret_far.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_ret_far.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.decode_cache }
%struct.decode_cache = type { i64, i32 }
%struct.x86_emulate_ops = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @emulate_ret_far to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_ret_far(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.x86_emulate_ops*, align 8
  %6 = alloca %struct.decode_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %5, align 8
  %9 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %9, i32 0, i32 1
  store %struct.decode_cache* %10, %struct.decode_cache** %6, align 8
  %11 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %12 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %13 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %14 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %13, i32 0, i32 0
  %15 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %16 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @emulate_pop(%struct.x86_emulate_ctxt* %11, %struct.x86_emulate_ops* %12, i64* %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %26 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %31 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %34 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %37 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %38 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %39 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @emulate_pop(%struct.x86_emulate_ctxt* %36, %struct.x86_emulate_ops* %37, i64* %8, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %49 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @VCPU_SREG_CS, align 4
  %54 = call i32 @kvm_load_segment_descriptor(i32 %50, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %45, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @emulate_pop(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i64*, i32) #1

declare dso_local i32 @kvm_load_segment_descriptor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
