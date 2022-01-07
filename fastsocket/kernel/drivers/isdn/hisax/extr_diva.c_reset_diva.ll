; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_reset_diva.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_reset_diva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32 }

@DIVA_IPAC_ISA = common dso_local global i64 0, align 8
@IPAC_POTA2 = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@DIVA_IPAC_PCI = common dso_local global i64 0, align 8
@PITA_MISC_REG = common dso_local global i64 0, align 8
@PITA_PARA_SOFTRESET = common dso_local global i32 0, align 4
@PITA_PARA_MPX_MODE = common dso_local global i32 0, align 4
@DIVA_IPACX_PCI = common dso_local global i64 0, align 8
@PITA_SER_SOFTRESET = common dso_local global i32 0, align 4
@IPACX_MASK = common dso_local global i32 0, align 4
@DIVA_RESET = common dso_local global i32 0, align 4
@DIVA_ISA = common dso_local global i64 0, align 8
@DIVA_ISA_LED_A = common dso_local global i32 0, align 4
@DIVA_PCI_LED_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @reset_diva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_diva(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DIVA_IPAC_ISA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPAC_POTA2, align 4
  %22 = call i32 @writereg(i32 %15, i32 %20, i32 %21, i32 32)
  %23 = call i32 @mdelay(i32 10)
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IPAC_POTA2, align 4
  %35 = call i32 @writereg(i32 %28, i32 %33, i32 %34, i32 0)
  %36 = call i32 @mdelay(i32 10)
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPAC_MASK, align 4
  %48 = call i32 @writereg(i32 %41, i32 %46, i32 %47, i32 192)
  br label %185

49:                                               ; preds = %1
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DIVA_IPAC_PCI, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PITA_MISC_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %3, align 8
  %64 = load i32, i32* @PITA_PARA_SOFTRESET, align 4
  %65 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** %3, align 8
  store i32 %66, i32* %67, align 4
  %68 = call i32 @mdelay(i32 10)
  %69 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %70 = load i32*, i32** %3, align 8
  store i32 %69, i32* %70, align 4
  %71 = call i32 @mdelay(i32 10)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IPAC_MASK, align 4
  %78 = call i32 @memwritereg(i32 %76, i32 %77, i32 192)
  br label %184

79:                                               ; preds = %49
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %81 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DIVA_IPACX_PCI, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PITA_MISC_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %4, align 8
  %94 = load i32, i32* @PITA_PARA_SOFTRESET, align 4
  %95 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %4, align 8
  store i32 %96, i32* %97, align 4
  %98 = call i32 @mdelay(i32 10)
  %99 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %100 = load i32, i32* @PITA_SER_SOFTRESET, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  %103 = call i32 @mdelay(i32 10)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %105 = load i32, i32* @IPACX_MASK, align 4
  %106 = call i32 @MemWriteISAC_IPACX(%struct.IsdnCardState* %104, i32 %105, i32 255)
  br label %183

107:                                              ; preds = %79
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %113 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %118 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @byteout(i64 %116, i32 %121)
  %123 = call i32 @mdelay(i32 10)
  %124 = load i32, i32* @DIVA_RESET, align 4
  %125 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %126 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 8
  %131 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %132 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %137 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @byteout(i64 %135, i32 %140)
  %142 = call i32 @mdelay(i32 10)
  %143 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %144 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DIVA_ISA, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %107
  %149 = load i32, i32* @DIVA_ISA_LED_A, align 4
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %151 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %149
  store i32 %155, i32* %153, align 8
  br label %171

156:                                              ; preds = %107
  %157 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %158 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 105
  %163 = call i32 @byteout(i64 %162, i32 9)
  %164 = load i32, i32* @DIVA_PCI_LED_A, align 4
  %165 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %166 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %156, %148
  %172 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %173 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %178 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @byteout(i64 %176, i32 %181)
  br label %183

183:                                              ; preds = %171, %85
  br label %184

184:                                              ; preds = %183, %55
  br label %185

185:                                              ; preds = %184, %10
  ret void
}

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @memwritereg(i32, i32, i32) #1

declare dso_local i32 @MemWriteISAC_IPACX(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @byteout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
