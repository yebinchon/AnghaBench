; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"hw->mac.addr : %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_mac_read_mac_addr(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  %5 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @ioread32(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @ioread32(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 255
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %34, i8** %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 255
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 4
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 5
  store i8* %73, i8** %78, align 8
  %79 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %82)
  ret i32 0
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
