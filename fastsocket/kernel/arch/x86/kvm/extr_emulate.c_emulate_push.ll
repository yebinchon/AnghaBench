; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.decode_cache }
%struct.decode_cache = type { i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@OP_MEM = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_emulate_ctxt*)* @emulate_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emulate_push(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  %3 = alloca %struct.decode_cache*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %4 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %5 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %4, i32 0, i32 0
  store %struct.decode_cache* %5, %struct.decode_cache** %3, align 8
  %6 = load i32, i32* @OP_MEM, align 4
  %7 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %8 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 8
  %10 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %11 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %14 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %17 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %21 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %24 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %25 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @VCPU_REGS_RSP, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %30 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 0, %31
  %33 = call i32 @register_address_increment(%struct.decode_cache* %23, i32* %28, i32 %32)
  %34 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %35 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %36 = call i32 @ss_base(%struct.x86_emulate_ctxt* %35)
  %37 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %38 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @VCPU_REGS_RSP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @register_address(%struct.decode_cache* %34, i32 %36, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %46 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  ret void
}

declare dso_local i32 @register_address_increment(%struct.decode_cache*, i32*, i32) #1

declare dso_local i64 @register_address(%struct.decode_cache*, i32, i32) #1

declare dso_local i32 @ss_base(%struct.x86_emulate_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
