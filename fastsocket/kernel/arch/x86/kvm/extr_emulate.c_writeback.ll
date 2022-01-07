; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.decode_cache }
%struct.decode_cache = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }
%struct.x86_emulate_ops = type { i32 (i64, i32*, i32*, i32, i32)*, i32 (i64, i32*, i32, i32)* }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeback(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.x86_emulate_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.decode_cache*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %5, align 8
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %8, i32 0, i32 1
  store %struct.decode_cache* %9, %struct.decode_cache** %7, align 8
  %10 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %11 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %111 [
    i32 128, label %14
    i32 130, label %56
    i32 129, label %110
  ]

14:                                               ; preds = %2
  %15 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %16 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %55 [
    i32 1, label %19
    i32 2, label %28
    i32 4, label %37
    i32 8, label %46
  ]

19:                                               ; preds = %14
  %20 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %21 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %25 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32 %23, i32* %27, align 4
  br label %55

28:                                               ; preds = %14
  %29 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %30 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %34 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32 %32, i32* %36, align 4
  br label %55

37:                                               ; preds = %14
  %38 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %39 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %43 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32 %41, i32* %45, align 4
  br label %55

46:                                               ; preds = %14
  %47 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %48 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %52 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %14, %46, %37, %28, %19
  br label %112

56:                                               ; preds = %2
  %57 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %58 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %63 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %62, i32 0, i32 0
  %64 = load i32 (i64, i32*, i32*, i32, i32)*, i32 (i64, i32*, i32*, i32, i32)** %63, align 8
  %65 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %66 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %68 to i64
  %70 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %71 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %74 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %77 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %81 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %64(i64 %69, i32* %72, i32* %75, i32 %79, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %104

84:                                               ; preds = %56
  %85 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %86 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %85, i32 0, i32 1
  %87 = load i32 (i64, i32*, i32, i32)*, i32 (i64, i32*, i32, i32)** %86, align 8
  %88 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %89 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = ptrtoint i32* %91 to i64
  %93 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %94 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load %struct.decode_cache*, %struct.decode_cache** %7, align 8
  %97 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %101 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %87(i64 %92, i32* %95, i32 %99, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %84, %61
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %114

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %2
  br label %112

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %111, %110, %109, %55
  %113 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
