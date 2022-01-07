; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_ntab_write_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_ntab_write_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@B43_NTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_ntab_write_bulk(%struct.b43_wldev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @B43_NTAB_TYPEMASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @B43_NTAB_TYPEMASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 65535
  %24 = zext i1 %23 to i32
  %25 = call i32 @B43_WARN_ON(i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %27 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 %27, i32 %28)
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %106, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 10
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 43224
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %47 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %54 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %55 = call i32 @b43_phy_read(%struct.b43_wldev* %53, i32 %54)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %57 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %58, %59
  %61 = call i32 @b43_phy_write(%struct.b43_wldev* %56, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %52, %45, %38, %34
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %103 [
    i32 128, label %64
    i32 130, label %76
    i32 129, label %88
  ]

64:                                               ; preds = %62
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, -256
  %71 = call i32 @B43_WARN_ON(i32 %70)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %73 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @b43_phy_write(%struct.b43_wldev* %72, i32 %73, i32 %74)
  br label %105

76:                                               ; preds = %62
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, -65536
  %83 = call i32 @B43_WARN_ON(i32 %82)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %85 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @b43_phy_write(%struct.b43_wldev* %84, i32 %85, i32 %86)
  br label %105

88:                                               ; preds = %62
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32* %92, i32** %11, align 8
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %94 = load i32, i32* @B43_NPHY_TABLE_DATAHI, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 16
  %97 = call i32 @b43_phy_write(%struct.b43_wldev* %93, i32 %94, i32 %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %99 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 65535
  %102 = call i32 @b43_phy_write(%struct.b43_wldev* %98, i32 %99, i32 %101)
  br label %105

103:                                              ; preds = %62
  %104 = call i32 @B43_WARN_ON(i32 1)
  br label %105

105:                                              ; preds = %103, %88, %76, %64
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %30

109:                                              ; preds = %30
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
