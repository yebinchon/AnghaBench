; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_copy_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_copy_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, i32, i32)* @do_s2io_copy_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_s2io_copy_mac_addr(%struct.s2io_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 5
  store i8* %9, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %24 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  store i8* %22, i8** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %37 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  store i8* %35, i8** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 24
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %50 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8* %48, i8** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 32
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %63 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %61, i8** %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 40
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %76 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  store i8* %74, i8** %83, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
