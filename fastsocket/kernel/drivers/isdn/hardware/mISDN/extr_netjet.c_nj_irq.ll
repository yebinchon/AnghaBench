; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@NJ_IRQSTAT0 = common dso_local global i32 0, align 4
@NJ_IRQSTAT1 = common dso_local global i32 0, align 4
@NJ_ISACIRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: IRQSTAT0 %02x IRQSTAT1 %02x\0A\00", align 1
@ISAC_ISTA = common dso_local global i32 0, align 4
@NJ_DMA_WRITE_ADR = common dso_local global i32 0, align 4
@NJ_DMA_READ_ADR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: DMA Status %02x/%02x/%02x %d/%d\0A\00", align 1
@NJ_IRQM0_RD_MASK = common dso_local global i32 0, align 4
@NJ_IRQM0_WR_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nj_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nj_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tiger_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tiger_hw*
  store %struct.tiger_hw* %11, %struct.tiger_hw** %6, align 8
  %12 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %13 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %16 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NJ_IRQSTAT0, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @inb(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %22 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NJ_IRQSTAT1, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @inb(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NJ_ISACIRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %36 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %213

39:                                               ; preds = %31, %2
  %40 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %41 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %47 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NJ_ISACIRQ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %39
  %55 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %56 = load i32, i32* @ISAC_ISTA, align 4
  %57 = call i32 @ReadISAC_nj(%struct.tiger_hw* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %62 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %61, i32 0, i32 6
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mISDNisac_irq(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %72 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NJ_IRQSTAT0, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @outb(i32 %70, i32 %75)
  br label %78

77:                                               ; preds = %66
  br label %208

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %81 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NJ_DMA_WRITE_ADR, align 4
  %84 = or i32 %82, %83
  %85 = call i8* @inl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %88 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %91 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %95 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %93, %97
  %99 = ashr i32 %98, 2
  %100 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %101 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %104 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %109 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %78
  store i32 8, i32* %9, align 4
  br label %115

114:                                              ; preds = %78
  store i32 4, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %113
  %116 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %117 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @NJ_DMA_READ_ADR, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @inl(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %124 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %127 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %131 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %129, %133
  %135 = ashr i32 %134, 2
  %136 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %137 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %140 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %145 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %143, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %115
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, 2
  store i32 %151, i32* %9, align 4
  br label %155

152:                                              ; preds = %115
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %157 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %162 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %165 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %169 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %159, i32 %160, i32 %163, i32 %167, i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %175 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %207

178:                                              ; preds = %155
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @NJ_IRQM0_RD_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %183 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NJ_IRQM0_RD_MASK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %181, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @send_tiger(%struct.tiger_hw* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %178
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @NJ_IRQM0_WR_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %197 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NJ_IRQM0_WR_MASK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %195, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @recv_tiger(%struct.tiger_hw* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %192
  br label %207

207:                                              ; preds = %206, %155
  br label %208

208:                                              ; preds = %207, %77
  %209 = load %struct.tiger_hw*, %struct.tiger_hw** %6, align 8
  %210 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %209, i32 0, i32 2
  %211 = call i32 @spin_unlock(i32* %210)
  %212 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %208, %34
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ReadISAC_nj(%struct.tiger_hw*, i32) #1

declare dso_local i32 @mISDNisac_irq(i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i8* @inl(i32) #1

declare dso_local i32 @send_tiger(%struct.tiger_hw*, i32) #1

declare dso_local i32 @recv_tiger(%struct.tiger_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
