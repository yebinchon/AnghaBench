; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400breakisr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400breakisr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32 }

@COR2 = common dso_local global i32 0, align 4
@EREG_DATA = common dso_local global i32 0, align 4
@COR2_ETC = common dso_local global i32 0, align 4
@TDR = common dso_local global i32 0, align 4
@ETC_CMD = common dso_local global i32 0, align 4
@ETC_STARTBREAK = common dso_local global i32 0, align 4
@SRER = common dso_local global i32 0, align 4
@SRER_TXDATA = common dso_local global i32 0, align 4
@SRER_TXEMPTY = common dso_local global i32 0, align 4
@ETC_STOPBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlport*, i32)* @stl_cd1400breakisr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_cd1400breakisr(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.stlport*, %struct.stlport** %4, align 8
  %7 = getelementptr inbounds %struct.stlport, %struct.stlport* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %65

10:                                               ; preds = %2
  %11 = load i32, i32* @COR2, align 4
  %12 = load %struct.stlport*, %struct.stlport** %4, align 8
  %13 = getelementptr inbounds %struct.stlport, %struct.stlport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EREG_DATA, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @inb(i32 %20)
  %22 = load i32, i32* @COR2_ETC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EREG_DATA, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @outb(i32 %23, i32 %26)
  %28 = load i32, i32* @TDR, align 4
  %29 = load %struct.stlport*, %struct.stlport** %4, align 8
  %30 = getelementptr inbounds %struct.stlport, %struct.stlport* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @outb(i32 %32, i32 %33)
  %35 = load i32, i32* @ETC_CMD, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EREG_DATA, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @outb(i32 %35, i32 %38)
  %40 = load i32, i32* @ETC_STARTBREAK, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EREG_DATA, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @outb(i32 %40, i32 %43)
  %45 = load i32, i32* @SRER, align 4
  %46 = load %struct.stlport*, %struct.stlport** %4, align 8
  %47 = getelementptr inbounds %struct.stlport, %struct.stlport* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @outb(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EREG_DATA, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @inb(i32 %54)
  %56 = load i32, i32* @SRER_TXDATA, align 4
  %57 = load i32, i32* @SRER_TXEMPTY, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @EREG_DATA, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @outb(i32 %60, i32 %63)
  store i32 1, i32* %3, align 4
  br label %113

65:                                               ; preds = %2
  %66 = load %struct.stlport*, %struct.stlport** %4, align 8
  %67 = getelementptr inbounds %struct.stlport, %struct.stlport* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i32, i32* @TDR, align 4
  %72 = load %struct.stlport*, %struct.stlport** %4, align 8
  %73 = getelementptr inbounds %struct.stlport, %struct.stlport* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @outb(i32 %75, i32 %76)
  %78 = load i32, i32* @ETC_CMD, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @EREG_DATA, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @outb(i32 %78, i32 %81)
  %83 = load i32, i32* @ETC_STOPBREAK, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @EREG_DATA, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @outb(i32 %83, i32 %86)
  %88 = load %struct.stlport*, %struct.stlport** %4, align 8
  %89 = getelementptr inbounds %struct.stlport, %struct.stlport* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  store i32 1, i32* %3, align 4
  br label %113

90:                                               ; preds = %65
  %91 = load i32, i32* @COR2, align 4
  %92 = load %struct.stlport*, %struct.stlport** %4, align 8
  %93 = getelementptr inbounds %struct.stlport, %struct.stlport* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @outb(i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @EREG_DATA, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @inb(i32 %100)
  %102 = load i32, i32* @COR2_ETC, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @EREG_DATA, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @outb(i32 %104, i32 %107)
  %109 = load %struct.stlport*, %struct.stlport** %4, align 8
  %110 = getelementptr inbounds %struct.stlport, %struct.stlport* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %70, %10
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
