; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_enpci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_enpci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i8, i64 }

@NETJET_IRQSTAT1 = common dso_local global i64 0, align 8
@TJ_AMD_IRQ = common dso_local global i8 0, align 1
@NETJET_IRQSTAT0 = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@NETJET_DMA_WRITE_ADR = common dso_local global i64 0, align 8
@NETJET_DMA_WRITE_IRQ = common dso_local global i64 0, align 8
@NETJET_DMA_READ_ADR = common dso_local global i64 0, align 8
@NETJET_DMA_READ_IRQ = common dso_local global i64 0, align 8
@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@NETJET_IRQM0_READ = common dso_local global i32 0, align 4
@NETJET_IRQM0_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @enpci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enpci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %12, %struct.IsdnCardState** %6, align 8
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @spin_lock_irqsave(i32* %14, i32 %15)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETJET_IRQSTAT1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call zeroext i8 @inb(i64 %23)
  store i8 %24, i8* %8, align 1
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @TJ_AMD_IRQ, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %33 = call zeroext i8 @ReadByteAmd7930(%struct.IsdnCardState* %32, i32 0)
  store i8 %33, i8* %9, align 1
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %35 = load i8, i8* %9, align 1
  %36 = call i32 @Amd7930_interrupt(%struct.IsdnCardState* %34, i8 zeroext %35)
  store i8 1, i8* %8, align 1
  br label %38

37:                                               ; preds = %2
  store i8 0, i8* %8, align 1
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NETJET_IRQSTAT0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call zeroext i8 @inb(i64 %45)
  store i8 %46, i8* %7, align 1
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i32 %56)
  %58 = load i32, i32* @IRQ_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %200

59:                                               ; preds = %38
  %60 = load i8, i8* %7, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i8, i8* %7, align 1
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %65 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NETJET_IRQSTAT0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb(i8 zeroext %63, i64 %70)
  br label %72

72:                                               ; preds = %62, %59
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %74 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NETJET_DMA_WRITE_ADR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i64 @inl(i64 %79)
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NETJET_DMA_WRITE_IRQ, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i64 @inl(i64 %87)
  %89 = icmp slt i64 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  store i8 8, i8* %7, align 1
  br label %92

91:                                               ; preds = %72
  store i8 4, i8* %7, align 1
  br label %92

92:                                               ; preds = %91, %90
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NETJET_DMA_READ_ADR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i64 @inl(i64 %99)
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NETJET_DMA_READ_IRQ, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i64 @inl(i64 %107)
  %109 = icmp slt i64 %100, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %92
  %111 = load i8, i8* %7, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %112, 2
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %7, align 1
  br label %120

115:                                              ; preds = %92
  %116 = load i8, i8* %7, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, 1
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %7, align 1
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i8, i8* %7, align 1
  %122 = zext i8 %121 to i32
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %124 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 8
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %122, %128
  br i1 %129, label %130, label %194

130:                                              ; preds = %120
  %131 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %133 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %132, i32 0, i32 1
  %134 = call i64 @test_and_set_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %138 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %137, i32 0, i32 0
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i32 %139)
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %141, i32* %3, align 4
  br label %200

142:                                              ; preds = %130
  %143 = load i8, i8* %7, align 1
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %145 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i8 %143, i8* %147, align 1
  %148 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %149 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* @NETJET_IRQM0_READ, align 4
  %155 = and i32 %153, %154
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %157 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i8, i8* %159, align 8
  %161 = zext i8 %160 to i32
  %162 = load i32, i32* @NETJET_IRQM0_READ, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %155, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %142
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %167 = call i32 @read_tiger(%struct.IsdnCardState* %166)
  br label %168

168:                                              ; preds = %165, %142
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %170 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %176 = and i32 %174, %175
  %177 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %178 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 8
  %182 = zext i8 %181 to i32
  %183 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %176, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %168
  %187 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %188 = call i32 @write_tiger(%struct.IsdnCardState* %187)
  br label %189

189:                                              ; preds = %186, %168
  %190 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %191 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %192 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %191, i32 0, i32 1
  %193 = call i32 @test_and_clear_bit(i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %189, %120
  %195 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %196 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %195, i32 0, i32 0
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i32 %197)
  %199 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %194, %136, %53
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local zeroext i8 @ReadByteAmd7930(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @Amd7930_interrupt(%struct.IsdnCardState*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @read_tiger(%struct.IsdnCardState*) #1

declare dso_local i32 @write_tiger(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
