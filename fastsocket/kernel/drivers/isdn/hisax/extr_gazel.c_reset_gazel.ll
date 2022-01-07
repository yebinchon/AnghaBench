; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_reset_gazel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_reset_gazel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PLX_CNTRL = common dso_local global i32 0, align 4
@RESET_9050 = common dso_local global i64 0, align 8
@RESET_GAZEL = common dso_local global i64 0, align 8
@INT_ISAC_EN = common dso_local global i64 0, align 8
@INT_HSCX_EN = common dso_local global i64 0, align 8
@INT_PCI_EN = common dso_local global i64 0, align 8
@PLX_INCSR = common dso_local global i32 0, align 4
@IPAC_POTA2 = common dso_local global i32 0, align 4
@IPAC_ACFG = common dso_local global i32 0, align 4
@IPAC_AOE = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@IPAC_CONF = common dso_local global i32 0, align 4
@INT_IPAC_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @reset_gazel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_gazel(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %166 [
    i32 131, label %13
    i32 130, label %20
    i32 128, label %65
    i32 129, label %136
  ]

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @writereg(i64 %14, i32 0, i32 0)
  %16 = call i32 @HZDELAY(i32 10)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @writereg(i64 %17, i32 0, i32 1)
  %19 = call i32 @HZDELAY(i32 2)
  br label %166

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @PLX_CNTRL, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = call i64 @inl(i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @RESET_9050, align 8
  %28 = load i64, i64* @RESET_GAZEL, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %3, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @PLX_CNTRL, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @outl(i64 %32, i32 %37)
  %39 = load i64, i64* @RESET_9050, align 8
  %40 = load i64, i64* @RESET_GAZEL, align 8
  %41 = add i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %3, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %3, align 8
  %45 = call i32 @HZDELAY(i32 4)
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @PLX_CNTRL, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @outl(i64 %46, i32 %51)
  %53 = call i32 @HZDELAY(i32 10)
  %54 = load i64, i64* @INT_ISAC_EN, align 8
  %55 = load i64, i64* @INT_HSCX_EN, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @INT_PCI_EN, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %4, align 8
  %60 = load i32, i32* @PLX_INCSR, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @outb(i64 %58, i32 %63)
  br label %166

65:                                               ; preds = %1
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* @PLX_CNTRL, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 @inl(i32 %70)
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* @RESET_9050, align 8
  %73 = load i64, i64* @RESET_GAZEL, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %3, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* @PLX_CNTRL, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @outl(i64 %77, i32 %82)
  %84 = load i64, i64* @RESET_9050, align 8
  %85 = load i64, i64* @RESET_GAZEL, align 8
  %86 = add i64 %84, %85
  %87 = xor i64 %86, -1
  %88 = load i64, i64* %3, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %3, align 8
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %91 = load i32, i32* @IPAC_POTA2, align 4
  %92 = sub nsw i32 %91, 128
  %93 = call i32 @WriteISAC(%struct.IsdnCardState* %90, i32 %92, i32 32)
  %94 = call i32 @HZDELAY(i32 4)
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i32, i32* @PLX_CNTRL, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @outl(i64 %95, i32 %100)
  %102 = call i32 @HZDELAY(i32 10)
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %104 = load i32, i32* @IPAC_POTA2, align 4
  %105 = sub nsw i32 %104, 128
  %106 = call i32 @WriteISAC(%struct.IsdnCardState* %103, i32 %105, i32 0)
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %108 = load i32, i32* @IPAC_ACFG, align 4
  %109 = sub nsw i32 %108, 128
  %110 = call i32 @WriteISAC(%struct.IsdnCardState* %107, i32 %109, i32 255)
  %111 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %112 = load i32, i32* @IPAC_AOE, align 4
  %113 = sub nsw i32 %112, 128
  %114 = call i32 @WriteISAC(%struct.IsdnCardState* %111, i32 %113, i32 0)
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %116 = load i32, i32* @IPAC_MASK, align 4
  %117 = sub nsw i32 %116, 128
  %118 = call i32 @WriteISAC(%struct.IsdnCardState* %115, i32 %117, i32 255)
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %120 = load i32, i32* @IPAC_CONF, align 4
  %121 = sub nsw i32 %120, 128
  %122 = call i32 @WriteISAC(%struct.IsdnCardState* %119, i32 %121, i32 1)
  %123 = load i64, i64* @INT_IPAC_EN, align 8
  %124 = load i64, i64* @INT_PCI_EN, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i64, i64* %4, align 8
  %127 = load i32, i32* @PLX_INCSR, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %126, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @outb(i64 %125, i32 %130)
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %133 = load i32, i32* @IPAC_MASK, align 4
  %134 = sub nsw i32 %133, 128
  %135 = call i32 @WriteISAC(%struct.IsdnCardState* %132, i32 %134, i32 192)
  br label %166

136:                                              ; preds = %1
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %138 = load i32, i32* @IPAC_POTA2, align 4
  %139 = sub nsw i32 %138, 128
  %140 = call i32 @WriteISAC(%struct.IsdnCardState* %137, i32 %139, i32 32)
  %141 = call i32 @HZDELAY(i32 4)
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %143 = load i32, i32* @IPAC_POTA2, align 4
  %144 = sub nsw i32 %143, 128
  %145 = call i32 @WriteISAC(%struct.IsdnCardState* %142, i32 %144, i32 0)
  %146 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %147 = load i32, i32* @IPAC_ACFG, align 4
  %148 = sub nsw i32 %147, 128
  %149 = call i32 @WriteISAC(%struct.IsdnCardState* %146, i32 %148, i32 255)
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %151 = load i32, i32* @IPAC_AOE, align 4
  %152 = sub nsw i32 %151, 128
  %153 = call i32 @WriteISAC(%struct.IsdnCardState* %150, i32 %152, i32 0)
  %154 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %155 = load i32, i32* @IPAC_MASK, align 4
  %156 = sub nsw i32 %155, 128
  %157 = call i32 @WriteISAC(%struct.IsdnCardState* %154, i32 %156, i32 255)
  %158 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %159 = load i32, i32* @IPAC_CONF, align 4
  %160 = sub nsw i32 %159, 128
  %161 = call i32 @WriteISAC(%struct.IsdnCardState* %158, i32 %160, i32 1)
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %163 = load i32, i32* @IPAC_MASK, align 4
  %164 = sub nsw i32 %163, 128
  %165 = call i32 @WriteISAC(%struct.IsdnCardState* %162, i32 %164, i32 192)
  br label %166

166:                                              ; preds = %1, %136, %65, %20, %13
  ret i32 0
}

declare dso_local i32 @writereg(i64, i32, i32) #1

declare dso_local i32 @HZDELAY(i32) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @WriteISAC(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
