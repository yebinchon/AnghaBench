; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@number_of_wtx = common dso_local global i64 0, align 8
@STAT_RDA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RDFIFO = common dso_local global i32 0, align 4
@TPM_VL_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Wrong transport protocol implementation!\0A\00", align 1
@TPM_CTRL_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error handling on vendor layer!\0A\00", align 1
@TPM_CTRL_WTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"WTX-package received\0A\00", align 1
@TPM_MAX_WTX_PACKAGES = common dso_local global i64 0, align 8
@TPM_CTRL_WTX_ABORT_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"WTX-abort acknowledged\0A\00", align 1
@TPM_CTRL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ERROR-package received:\0A\00", align 1
@TPM_INF_NAK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"-> Negative acknowledgement - retransmit command!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_inf_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_inf_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* @number_of_wtx, align 8
  br label %11

11:                                               ; preds = %134, %131, %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %17 = load i32, i32* @STAT_RDA, align 4
  %18 = call i32 @wait(%struct.tpm_chip* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %176

24:                                               ; preds = %15
  %25 = load i32, i32* @RDFIFO, align 4
  %26 = call i32 @tpm_data_in(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TPM_VL_VER, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %176

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TPM_CTRL_DATA, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %117

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %76, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %68 = load i32, i32* @STAT_RDA, align 4
  %69 = call i32 @wait(%struct.tpm_chip* %67, i32 %68)
  %70 = load i32, i32* @RDFIFO, align 4
  %71 = call i32 @tpm_data_in(i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 27904
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %89 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %176

94:                                               ; preds = %82, %79
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %95

113:                                              ; preds = %95
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 6
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %176

117:                                              ; preds = %47
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TPM_CTRL_WTX, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %125 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_info(i32 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i64, i64* @number_of_wtx, align 8
  %129 = load i64, i64* @TPM_MAX_WTX_PACKAGES, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %133 = call i32 @tpm_wtx(%struct.tpm_chip* %132)
  br label %11

134:                                              ; preds = %123
  %135 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %136 = call i32 @tpm_wtx_abort(%struct.tpm_chip* %135)
  br label %11

137:                                              ; preds = %117
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TPM_CTRL_WTX_ABORT_ACK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %145 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_info(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %176

149:                                              ; preds = %137
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TPM_CTRL_ERROR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %149
  %156 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %157 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TPM_INF_NAK, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %167 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dev_err(i32 %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %155
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %176

173:                                              ; preds = %149
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %173, %170, %143, %113, %87, %40, %21
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @wait(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_data_in(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @tpm_wtx(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_wtx_abort(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
