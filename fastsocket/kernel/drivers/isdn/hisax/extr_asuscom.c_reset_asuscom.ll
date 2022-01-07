; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_asuscom.c_reset_asuscom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_asuscom.c_reset_asuscom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ASUS_IPAC = common dso_local global i64 0, align 8
@IPAC_POTA2 = common dso_local global i32 0, align 4
@ASUS_RESET = common dso_local global i32 0, align 4
@IPAC_CONF = common dso_local global i32 0, align 4
@IPAC_ACFG = common dso_local global i32 0, align 4
@IPAC_AOE = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@IPAC_PCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @reset_asuscom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_asuscom(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ASUS_IPAC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IPAC_POTA2, align 4
  %20 = call i32 @writereg(i32 %13, i32 %18, i32 %19, i32 32)
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ASUS_RESET, align 4
  %28 = call i32 @byteout(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %8
  %30 = call i32 @mdelay(i32 10)
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ASUS_IPAC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IPAC_POTA2, align 4
  %48 = call i32 @writereg(i32 %41, i32 %46, i32 %47, i32 0)
  br label %56

49:                                               ; preds = %29
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @byteout(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %49, %36
  %57 = call i32 @mdelay(i32 10)
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ASUS_IPAC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %124

63:                                               ; preds = %56
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %65 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IPAC_CONF, align 4
  %75 = call i32 @writereg(i32 %68, i32 %73, i32 %74, i32 0)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IPAC_ACFG, align 4
  %87 = call i32 @writereg(i32 %80, i32 %85, i32 %86, i32 255)
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %89 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IPAC_AOE, align 4
  %99 = call i32 @writereg(i32 %92, i32 %97, i32 %98, i32 0)
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %106 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IPAC_MASK, align 4
  %111 = call i32 @writereg(i32 %104, i32 %109, i32 %110, i32 192)
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %113 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %118 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IPAC_PCFG, align 4
  %123 = call i32 @writereg(i32 %116, i32 %121, i32 %122, i32 18)
  br label %124

124:                                              ; preds = %63, %56
  ret void
}

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @byteout(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
