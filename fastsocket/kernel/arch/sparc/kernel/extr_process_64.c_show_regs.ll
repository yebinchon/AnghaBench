; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"TSTATE: %016lx TPC: %016lx TNPC: %016lx Y: %08x    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TPC: <%pS>\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"g0: %016lx g1: %016lx g2: %016lx g3: %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"g4: %016lx g5: %016lx g6: %016lx g7: %016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"o0: %016lx o1: %016lx o2: %016lx o3: %016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"o4: %016lx o5: %016lx sp: %016lx ret_pc: %016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"RPC: <%pS>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (...) @print_tainted()
  %18 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %7, i64 %10, i32 %13, i32 %16, i32 %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %29, i64 %34, i64 %39, i64 %44)
  %46 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 6
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 7
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %51, i64 %56, i64 %61, i64 %66)
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 8
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 9
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 10
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 11
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %73, i64 %78, i64 %83, i64 %88)
  %90 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 12
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 13
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 14
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 15
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %95, i64 %100, i64 %105, i64 %110)
  %112 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 15
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  %119 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %120 = call i32 @show_regwindow(%struct.pt_regs* %119)
  ret void
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @show_regwindow(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
