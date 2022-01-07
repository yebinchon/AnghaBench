; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_decode_register_operand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_decode_register_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.operand = type { i32, i32, i32, i8*, i32 }
%struct.decode_cache = type { i32, i32, i32, i32, i32, i32 }

@ModRM = common dso_local global i32 0, align 4
@OP_REG = common dso_local global i32 0, align 4
@ByteOp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.operand*, %struct.decode_cache*, i32)* @decode_register_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_register_operand(%struct.operand* %0, %struct.decode_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.operand*, align 8
  %5 = alloca %struct.decode_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.operand* %0, %struct.operand** %4, align 8
  store %struct.decode_cache* %1, %struct.decode_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %10 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %13 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %18 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ModRM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %3
  %24 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %25 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  %28 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %29 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 3
  %33 = or i32 %27, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %23, %3
  %35 = load i32, i32* @OP_REG, align 4
  %36 = load %struct.operand*, %struct.operand** %4, align 8
  %37 = getelementptr inbounds %struct.operand, %struct.operand* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %39 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ByteOp, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %50 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @decode_register(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.operand*, %struct.operand** %4, align 8
  %55 = getelementptr inbounds %struct.operand, %struct.operand* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.operand*, %struct.operand** %4, align 8
  %57 = getelementptr inbounds %struct.operand, %struct.operand* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.operand*, %struct.operand** %4, align 8
  %62 = getelementptr inbounds %struct.operand, %struct.operand* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.operand*, %struct.operand** %4, align 8
  %64 = getelementptr inbounds %struct.operand, %struct.operand* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %106

65:                                               ; preds = %44, %34
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %68 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @decode_register(i32 %66, i32 %69, i32 0)
  %71 = load %struct.operand*, %struct.operand** %4, align 8
  %72 = getelementptr inbounds %struct.operand, %struct.operand* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %74 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.operand*, %struct.operand** %4, align 8
  %77 = getelementptr inbounds %struct.operand, %struct.operand* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.operand*, %struct.operand** %4, align 8
  %79 = getelementptr inbounds %struct.operand, %struct.operand* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %105 [
    i32 2, label %81
    i32 4, label %89
    i32 8, label %97
  ]

81:                                               ; preds = %65
  %82 = load %struct.operand*, %struct.operand** %4, align 8
  %83 = getelementptr inbounds %struct.operand, %struct.operand* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.operand*, %struct.operand** %4, align 8
  %88 = getelementptr inbounds %struct.operand, %struct.operand* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %105

89:                                               ; preds = %65
  %90 = load %struct.operand*, %struct.operand** %4, align 8
  %91 = getelementptr inbounds %struct.operand, %struct.operand* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.operand*, %struct.operand** %4, align 8
  %96 = getelementptr inbounds %struct.operand, %struct.operand* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %105

97:                                               ; preds = %65
  %98 = load %struct.operand*, %struct.operand** %4, align 8
  %99 = getelementptr inbounds %struct.operand, %struct.operand* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.operand*, %struct.operand** %4, align 8
  %104 = getelementptr inbounds %struct.operand, %struct.operand* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %65, %97, %89, %81
  br label %106

106:                                              ; preds = %105, %47
  %107 = load %struct.operand*, %struct.operand** %4, align 8
  %108 = getelementptr inbounds %struct.operand, %struct.operand* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.operand*, %struct.operand** %4, align 8
  %111 = getelementptr inbounds %struct.operand, %struct.operand* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  ret void
}

declare dso_local i8* @decode_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
