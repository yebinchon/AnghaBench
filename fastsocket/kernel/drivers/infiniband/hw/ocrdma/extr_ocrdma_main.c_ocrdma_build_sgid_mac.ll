; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_build_sgid_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_build_sgid_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ib_gid*, i8*, i32, i32)* @ocrdma_build_sgid_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_sgid_mac(%union.ib_gid* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.ib_gid* %0, %union.ib_gid** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @cpu_to_be64(i32 0)
  %10 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %11 = bitcast %union.ib_gid* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 2
  %18 = trunc i32 %17 to i8
  %19 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %20 = bitcast %union.ib_gid* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8 %18, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %27 = bitcast %union.ib_gid* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 9
  store i8 %25, i8* %29, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %34 = bitcast %union.ib_gid* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 10
  store i8 %32, i8* %36, align 1
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i8
  %43 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %44 = bitcast %union.ib_gid* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 11
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %51 = bitcast %union.ib_gid* %50 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  store i8 %49, i8* %53, align 1
  br label %63

54:                                               ; preds = %4
  %55 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %56 = bitcast %union.ib_gid* %55 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 11
  store i8 -1, i8* %58, align 1
  %59 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %60 = bitcast %union.ib_gid* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  store i8 -2, i8* %62, align 1
  br label %63

63:                                               ; preds = %54, %39
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %68 = bitcast %union.ib_gid* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 13
  store i8 %66, i8* %70, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = load i8, i8* %72, align 1
  %74 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %75 = bitcast %union.ib_gid* %74 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 14
  store i8 %73, i8* %77, align 1
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %82 = bitcast %union.ib_gid* %81 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 15
  store i8 %80, i8* %84, align 1
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
