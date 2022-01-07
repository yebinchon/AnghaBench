; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i8** }

@E1000_RAL_MAC_ADDR_LEN = common dso_local global i64 0, align 8
@E1000_RAH_MAC_ADDR_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_mac_addr(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @E1000_RAH(i32 0)
  %7 = call i64 @rd32(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = call i32 @E1000_RAL(i32 0)
  %9 = call i64 @rd32(i32 %8)
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @E1000_RAL_MAC_ADDR_LEN, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = mul i64 %16, 8
  %18 = lshr i64 %15, %17
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %19, i8** %25, align 8
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %10

29:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @E1000_RAH_MAC_ADDR_LEN, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = mul i64 %36, 8
  %38 = lshr i64 %35, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 4
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %39, i8** %46, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %30

50:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %62, i8** %68, align 8
  br label %69

69:                                               ; preds = %55
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %51

72:                                               ; preds = %51
  ret i32 0
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @E1000_RAH(i32) #1

declare dso_local i32 @E1000_RAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
