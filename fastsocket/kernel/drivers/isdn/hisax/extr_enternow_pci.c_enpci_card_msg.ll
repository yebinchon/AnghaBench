; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_enpci_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_enpci_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i32 (%struct.IsdnCardState.0*, i8, i8*)* }
%struct.IsdnCardState.0 = type opaque

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"enter:now PCI: card_msg: 0x%04X\00", align 1
@TJ_AMD_IRQ = common dso_local global i32 0, align 4
@NETJET_AUXDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"enter:now PCI: assign phys. BC %d in AMD LMR1\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MDL_BC_ASSIGN\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"enter:now PCI: release phys. BC %d in Amd LMR1\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MDL_BC_RELEASE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @enpci_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enpci_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @L1_DEB_ISAC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = trunc i32 %17 to i8
  %19 = call i32 @debugl1(%struct.IsdnCardState* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 zeroext %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %201 [
    i32 133, label %22
    i32 134, label %35
    i32 135, label %38
    i32 132, label %45
    i32 131, label %46
    i32 128, label %66
    i32 130, label %79
    i32 129, label %134
  ]

22:                                               ; preds = %20
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 3
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @spin_lock_irqsave(i32* %24, i32 %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %28 = call i32 @reset_enpci(%struct.IsdnCardState* %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %30 = call i32 @Amd7930_init(%struct.IsdnCardState* %29)
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 3
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i32 %33)
  br label %202

35:                                               ; preds = %20
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %37 = call i32 @release_io_netjet(%struct.IsdnCardState* %36)
  br label %202

38:                                               ; preds = %20
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %40 = call i32 @reset_enpci(%struct.IsdnCardState* %39)
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %42 = call i32 @inittiger(%struct.IsdnCardState* %41)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %44 = call i32 @Amd7930_init(%struct.IsdnCardState* %43)
  br label %202

45:                                               ; preds = %20
  br label %202

46:                                               ; preds = %20
  %47 = load i32, i32* @TJ_AMD_IRQ, align 4
  %48 = shl i32 %47, 1
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NETJET_AUXDATA, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %57, i64 %64)
  br label %202

66:                                               ; preds = %20
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NETJET_AUXDATA, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 0, i64 %77)
  br label %202

79:                                               ; preds = %20
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %8, align 8
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @L1_DEB_ISAC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @debugl1(%struct.IsdnCardState* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %90)
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32 (%struct.IsdnCardState.0*, i8, i8*)*, i32 (%struct.IsdnCardState.0*, i8, i8*)** %96, align 8
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %99 = bitcast %struct.IsdnCardState* %98 to %struct.IsdnCardState.0*
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, 1
  %110 = or i32 %105, %109
  %111 = trunc i32 %110 to i8
  %112 = call i32 %97(%struct.IsdnCardState.0* %99, i8 zeroext %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @TJ_AMD_IRQ, align 4
  %114 = shl i32 %113, 2
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 8
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %122 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %127 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NETJET_AUXDATA, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outb(i32 %125, i64 %132)
  br label %202

134:                                              ; preds = %20
  %135 = load i8*, i8** %6, align 8
  store i8* %135, i8** %8, align 8
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %137 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @L1_DEB_ISAC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @debugl1(%struct.IsdnCardState* %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %145)
  br label %147

147:                                              ; preds = %142, %134
  %148 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %149 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32 (%struct.IsdnCardState.0*, i8, i8*)*, i32 (%struct.IsdnCardState.0*, i8, i8*)** %151, align 8
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %154 = bitcast %struct.IsdnCardState* %153 to %struct.IsdnCardState.0*
  %155 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %156 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i8, i8* %158, align 8
  %160 = zext i8 %159 to i32
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %163, 1
  %165 = xor i32 %164, -1
  %166 = and i32 %160, %165
  %167 = trunc i32 %166 to i8
  %168 = call i32 %152(%struct.IsdnCardState.0* %154, i8 zeroext %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %170 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 8
  %174 = zext i8 %173 to i32
  %175 = and i32 %174, 3
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %200, label %177

177:                                              ; preds = %147
  %178 = load i32, i32* @TJ_AMD_IRQ, align 4
  %179 = shl i32 %178, 2
  %180 = xor i32 %179, -1
  %181 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %182 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %180
  store i32 %186, i32* %184, align 8
  %187 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %188 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %193 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NETJET_AUXDATA, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @outb(i32 %191, i64 %198)
  br label %200

200:                                              ; preds = %177, %147
  br label %202

201:                                              ; preds = %20
  br label %202

202:                                              ; preds = %201, %200, %92, %66, %46, %45, %38, %35, %22
  ret i32 0
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_enpci(%struct.IsdnCardState*) #1

declare dso_local i32 @Amd7930_init(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_netjet(%struct.IsdnCardState*) #1

declare dso_local i32 @inittiger(%struct.IsdnCardState*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
