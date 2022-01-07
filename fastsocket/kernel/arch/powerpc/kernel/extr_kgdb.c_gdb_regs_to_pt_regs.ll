; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32* }

@NUMREGBYTES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i64*, i64** %3, align 8
  store i64* %7, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @UNPACK64(i32 %18, i64* %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 64
  store i64* %26, i64** %5, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i64*, i64** %5, align 8
  %31 = call i32 @UNPACK64(i32 %29, i64* %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @UNPACK64(i32 %34, i64* %35)
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = call i32 @UNPACK32(i32 %39, i64* %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = call i32 @UNPACK64(i32 %44, i64* %45)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64*, i64** %5, align 8
  %51 = call i32 @UNPACK64(i32 %49, i64* %50)
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = call i32 @UNPACK32(i32 %54, i64* %55)
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = load i64*, i64** %3, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = load i32, i32* @NUMREGBYTES, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = ptrtoint i8* %63 to i64
  %65 = icmp ugt i64 %58, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  ret void
}

declare dso_local i32 @UNPACK64(i32, i64*) #1

declare dso_local i32 @UNPACK32(i32, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
