; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_async_hcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lguest/extr_boot.c_async_hcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@async_hcall.next_call = internal global i32 0, align 4
@lguest_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LHCALL_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @async_hcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_hcall(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 0), align 8
  %15 = load i32, i32* @async_hcall.next_call, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 255
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @kvm_hypercall4(i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  br label %69

27:                                               ; preds = %5
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 1), align 8
  %30 = load i32, i32* @async_hcall.next_call, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %28, i64* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 1), align 8
  %36 = load i32, i32* @async_hcall.next_call, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 %34, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 1), align 8
  %42 = load i32, i32* @async_hcall.next_call, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 %40, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 1), align 8
  %48 = load i32, i32* @async_hcall.next_call, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i64 %46, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 1), align 8
  %54 = load i32, i32* @async_hcall.next_call, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i64 %52, i64* %57, align 8
  %58 = call i32 (...) @wmb()
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lguest_data, i32 0, i32 0), align 8
  %60 = load i32, i32* @async_hcall.next_call, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @async_hcall.next_call, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* @async_hcall.next_call, align 4
  %65 = load i32, i32* @LHCALL_RING_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %27
  store i32 0, i32* @async_hcall.next_call, align 4
  br label %68

68:                                               ; preds = %67, %27
  br label %69

69:                                               ; preds = %68, %20
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @local_irq_restore(i64 %70)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @kvm_hypercall4(i64, i64, i64, i64, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
