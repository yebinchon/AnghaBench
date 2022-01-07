; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_setup_dma_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_setup_dma_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@PLX_DESC_IN_PCI_BIT = common dso_local global i32 0, align 4
@PLX_INTR_TERM_COUNT = common dso_local global i32 0, align 4
@PLX_XFER_LOCAL_TO_PCI = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" transfer_size %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" descriptors at 0x%lx\0A\00", align 1
@NUM_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@NUM_DMA_BUFFERS = common dso_local global i32 0, align 4
@FIFO_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" desc %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c" start addr virt 0x%p, phys 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" next 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" desc %i next fixup 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @setup_dma_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dma_descriptors(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %11 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PLX_XFER_LOCAL_TO_PCI, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = urem i64 %22, 4
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = sub i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %223

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %180, %31
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @NUM_DMA_DESCRIPTORS, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NUM_DMA_BUFFERS, align 4
  %48 = icmp ult i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %183

51:                                               ; preds = %49
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %59, %60
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %62, i8** %70, align 8
  %71 = load i32, i32* @FIFO_REG, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i8* %72, i8** %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i8* %82, i8** %90, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, 32
  %100 = add i64 %95, %99
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = or i64 %100, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i8* %105, i8** %113, align 8
  %114 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %115 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = udiv i64 %124, 4
  %126 = add i64 %122, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %129 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %138, %139
  %141 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %51
  store i32 0, i32* %7, align 4
  %144 = load i32, i32* %6, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %143, %51
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %150 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %158 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %156, i64 %166)
  %168 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %169 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = trunc i64 %177 to i32
  %179 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %146
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %41

183:                                              ; preds = %49
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %186 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i32 %184, i32* %187, align 8
  %188 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %189 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %188)
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %191, %192
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %196 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %195)
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sub i32 %199, 1
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i8* %194, i8** %203, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sub i32 %204, 1
  %206 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %207 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %206)
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 6
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sub i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %205, i64 %216)
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %220 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %219)
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 5
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* %5, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %183, %30
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @DEBUG_PRINT(i8*, i32, ...) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.comedi_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
