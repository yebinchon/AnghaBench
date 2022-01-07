; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32* }

@NUMREGBYTES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i64*, i64** %3, align 8
  store i64* %7, i64** %5, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i32, i32* @NUMREGBYTES, align 4
  %10 = call i32 @memset(i64* %8, i32 0, i32 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i64*, i64** %5, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PACK64(i64* %15, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 32
  store i64* %29, i64** %5, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PACK64(i64* %30, i32 %33)
  %35 = load i64*, i64** %5, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PACK64(i64* %35, i32 %38)
  %40 = load i64*, i64** %5, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PACK32(i64* %40, i32 %43)
  %45 = load i64*, i64** %5, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PACK64(i64* %45, i32 %48)
  %50 = load i64*, i64** %5, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PACK64(i64* %50, i32 %53)
  %55 = load i64*, i64** %5, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PACK32(i64* %55, i32 %58)
  %60 = load i64*, i64** %5, align 8
  %61 = ptrtoint i64* %60 to i64
  %62 = load i64*, i64** %3, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = load i32, i32* @NUMREGBYTES, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = ptrtoint i8* %66 to i64
  %68 = icmp ugt i64 %61, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @PACK64(i64*, i32) #1

declare dso_local i32 @PACK32(i64*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
