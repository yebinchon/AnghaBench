; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@TPM_STS_COMMAND_READY = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@itpm = common dso_local global i32 0, align 4
@TPM_STS_DATA_EXPECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_STS_GO = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %14 = call i64 @request_locality(%struct.tpm_chip* %13, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %195

19:                                               ; preds = %3
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %21 = call i32 @tpm_tis_status(%struct.tpm_chip* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %28 = call i32 @tpm_tis_ready(%struct.tpm_chip* %27)
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %30 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %32 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %29, i32 %30, i32 %34, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ETIME, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %185

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 1
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %45
  %51 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %52 = call i32 @get_burstcount(%struct.tpm_chip* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %81, %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 1
  %60 = icmp ult i64 %57, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %84

63:                                               ; preds = %61
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %69 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @TPM_DATA_FIFO(i32 %75)
  %77 = add nsw i64 %71, %76
  %78 = call i32 @iowrite8(i32 %67, i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %10, align 4
  br label %53

84:                                               ; preds = %61
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %86 = load i32, i32* @TPM_STS_VALID, align 4
  %87 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %88 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %92 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %85, i32 %86, i32 %90, i32* %93)
  %95 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %96 = call i32 @tpm_tis_status(%struct.tpm_chip* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @itpm, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %185

107:                                              ; preds = %99, %84
  br label %45

108:                                              ; preds = %45
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %114 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %118 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @TPM_DATA_FIFO(i32 %120)
  %122 = add nsw i64 %116, %121
  %123 = call i32 @iowrite8(i32 %112, i64 %122)
  %124 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %125 = load i32, i32* @TPM_STS_VALID, align 4
  %126 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %127 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %131 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %124, i32 %125, i32 %129, i32* %132)
  %134 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %135 = call i32 @tpm_tis_status(%struct.tpm_chip* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %108
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  br label %185

143:                                              ; preds = %108
  %144 = load i32, i32* @TPM_STS_GO, align 4
  %145 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %146 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %150 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @TPM_STS(i32 %152)
  %154 = add nsw i64 %148, %153
  %155 = call i32 @iowrite8(i32 %144, i64 %154)
  %156 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %157 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %143
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 6
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be32_to_cpu(i32 %164)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %167 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %168 = load i32, i32* @TPM_STS_VALID, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @tpm_calc_ordinal_duration(%struct.tpm_chip* %170, i32 %171)
  %173 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %174 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %166, i32 %169, i32 %172, i32* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %161
  %179 = load i32, i32* @ETIME, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %8, align 4
  br label %185

181:                                              ; preds = %161
  br label %182

182:                                              ; preds = %181, %143
  %183 = load i64, i64* %7, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %4, align 4
  br label %195

185:                                              ; preds = %178, %140, %104, %40
  %186 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %187 = call i32 @tpm_tis_ready(%struct.tpm_chip* %186)
  %188 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %189 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %190 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @release_locality(%struct.tpm_chip* %188, i32 %192, i32 0)
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %185, %182, %16
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @request_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_tis_status(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_tis_ready(%struct.tpm_chip*) #1

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @get_burstcount(%struct.tpm_chip*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i64 @TPM_DATA_FIFO(i32) #1

declare dso_local i64 @TPM_STS(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tpm_calc_ordinal_duration(%struct.tpm_chip*, i32) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
