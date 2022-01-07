; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_post_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_post_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@RX_INDEX_NUM = common dso_local global i32 0, align 4
@RX_INDEX_RING = common dso_local global i32 0, align 4
@REG_RX_KICK = common dso_local global i64 0, align 8
@N_RX_DESC_RINGS = common dso_local global i32 0, align 4
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@REG_PLUS_RX_KICK1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32, i32)* @cas_post_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_post_page(%struct.cas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cas*, %struct.cas** %4, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.cas*, %struct.cas** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_5__* @cas_page_swap(%struct.cas* %16, i32 %17, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = load %struct.cas*, %struct.cas** %4, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %23, i8** %34, align 8
  %35 = load i32, i32* @RX_INDEX_NUM, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CAS_BASE(i32 %35, i32 %36)
  %38 = load i32, i32* @RX_INDEX_RING, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CAS_BASE(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.cas*, %struct.cas** %4, align 8
  %44 = getelementptr inbounds %struct.cas, %struct.cas* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* %42, i8** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @RX_DESC_ENTRY(i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.cas*, %struct.cas** %4, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = srem i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %3
  br label %99

69:                                               ; preds = %3
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.cas*, %struct.cas** %4, align 8
  %75 = getelementptr inbounds %struct.cas, %struct.cas* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @REG_RX_KICK, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  br label %99

80:                                               ; preds = %69
  %81 = load i32, i32* @N_RX_DESC_RINGS, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.cas*, %struct.cas** %4, align 8
  %85 = getelementptr inbounds %struct.cas, %struct.cas* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.cas*, %struct.cas** %4, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @REG_PLUS_RX_KICK1, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  br label %98

98:                                               ; preds = %90, %83, %80
  br label %99

99:                                               ; preds = %68, %98, %72
  ret void
}

declare dso_local %struct.TYPE_5__* @cas_page_swap(%struct.cas*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @RX_DESC_ENTRY(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
