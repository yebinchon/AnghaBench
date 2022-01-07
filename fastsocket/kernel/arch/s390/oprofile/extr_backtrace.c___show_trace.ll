; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/oprofile/extr_backtrace.c___show_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/oprofile/extr_backtrace.c___show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_frame = type { i64*, i64 }
%struct.pt_regs = type { i64* }

@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i64)* @__show_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__show_trace(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stack_frame*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %12

12:                                               ; preds = %102, %4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %122

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PSW_ADDR_INSN, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 16
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %16
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %5, align 8
  br label %124

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = inttoptr i64 %31 to %struct.stack_frame*
  store %struct.stack_frame* %32, %struct.stack_frame** %10, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %37 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PSW_ADDR_INSN, align 8
  %42 = and i64 %40, %41
  %43 = call i32 @oprofile_add_trace(i64 %42)
  br label %44

44:                                               ; preds = %69, %30
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %51 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PSW_ADDR_INSN, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %83

58:                                               ; preds = %48
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 16
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %5, align 8
  br label %124

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = inttoptr i64 %70 to %struct.stack_frame*
  store %struct.stack_frame* %71, %struct.stack_frame** %10, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %76 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PSW_ADDR_INSN, align 8
  %81 = and i64 %79, %80
  %82 = call i32 @oprofile_add_trace(i64 %81)
  br label %44

83:                                               ; preds = %57, %44
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %122

88:                                               ; preds = %83
  %89 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %90 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %89, i64 1
  %91 = ptrtoint %struct.stack_frame* %90 to i64
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ule i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %97, 8
  %99 = icmp ugt i64 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %88
  %101 = load i64, i64* %7, align 8
  store i64 %101, i64* %5, align 8
  br label %124

102:                                              ; preds = %95
  %103 = load i64, i64* %7, align 8
  %104 = inttoptr i64 %103 to %struct.pt_regs*
  store %struct.pt_regs* %104, %struct.pt_regs** %11, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %109 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PSW_ADDR_INSN, align 8
  %114 = and i64 %112, %113
  %115 = call i32 @oprofile_add_trace(i64 %114)
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %8, align 8
  %117 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %118 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 15
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %7, align 8
  br label %12

122:                                              ; preds = %87, %12
  %123 = load i64, i64* %7, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %122, %100, %67, %28
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @oprofile_add_trace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
