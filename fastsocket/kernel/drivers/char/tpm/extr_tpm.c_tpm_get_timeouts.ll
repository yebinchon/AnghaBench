; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_get_timeouts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_get_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i8*, i8*, i8*, i8* }
%struct.tpm_cmd_t = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.duration_t, %struct.timeout_t }
%struct.duration_t = type { i32, i32, i32 }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@tpm_getcap_header = common dso_local global i8* null, align 8
@TPM_CAP_PROP = common dso_local global i8* null, align 8
@TPM_CAP_PROP_TIS_TIMEOUT = common dso_local global i32 0, align 4
@TPM_INTERNAL_RESULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"attempting to determine the timeouts\00", align 1
@TPM_CAP_PROP_TIS_DURATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"attempting to determine the durations\00", align 1
@TPM_SHORT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TPM_MEDIUM = common dso_local global i64 0, align 8
@TPM_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_get_timeouts(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_cmd_t, align 8
  %4 = alloca %struct.timeout_t*, align 8
  %5 = alloca %struct.duration_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %8 = load i8*, i8** @tpm_getcap_header, align 8
  %9 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @TPM_CAP_PROP, align 8
  %12 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i8* %11, i8** %14, align 8
  %15 = call i8* @cpu_to_be32(i32 4)
  %16 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @TPM_CAP_PROP_TIS_TIMEOUT, align 4
  %20 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %24 = load i32, i32* @TPM_INTERNAL_RESULT_SIZE, align 4
  %25 = call i64 @transmit_cmd(%struct.tpm_chip* %23, %struct.tpm_cmd_t* %3, i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %95

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %95

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store %struct.timeout_t* %42, %struct.timeout_t** %4, align 8
  %43 = load %struct.timeout_t*, %struct.timeout_t** %4, align 8
  %44 = getelementptr inbounds %struct.timeout_t, %struct.timeout_t* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @usecs_to_jiffies(i32 %50)
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %38
  %56 = load %struct.timeout_t*, %struct.timeout_t** %4, align 8
  %57 = getelementptr inbounds %struct.timeout_t, %struct.timeout_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = call i8* @usecs_to_jiffies(i32 %63)
  %65 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %66 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.timeout_t*, %struct.timeout_t** %4, align 8
  %70 = getelementptr inbounds %struct.timeout_t, %struct.timeout_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @usecs_to_jiffies(i32 %76)
  %78 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %79 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.timeout_t*, %struct.timeout_t** %4, align 8
  %83 = getelementptr inbounds %struct.timeout_t, %struct.timeout_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be32_to_cpu(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @usecs_to_jiffies(i32 %89)
  %91 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %92 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %81
  br label %95

95:                                               ; preds = %94, %37, %28
  %96 = load i8*, i8** @tpm_getcap_header, align 8
  %97 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @TPM_CAP_PROP, align 8
  %100 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  %103 = call i8* @cpu_to_be32(i32 4)
  %104 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* @TPM_CAP_PROP_TIS_DURATION, align 4
  %108 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %112 = load i32, i32* @TPM_INTERNAL_RESULT_SIZE, align 4
  %113 = call i64 @transmit_cmd(%struct.tpm_chip* %111, %struct.tpm_cmd_t* %3, i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %95
  br label %186

117:                                              ; preds = %95
  %118 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %123, 12
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %186

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.tpm_cmd_t, %struct.tpm_cmd_t* %3, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store %struct.duration_t* %130, %struct.duration_t** %5, align 8
  %131 = load %struct.duration_t*, %struct.duration_t** %5, align 8
  %132 = getelementptr inbounds %struct.duration_t, %struct.duration_t* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be32_to_cpu(i32 %133)
  %135 = call i8* @usecs_to_jiffies(i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %138 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @TPM_SHORT, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %136, i32* %142, align 4
  %143 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %144 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @TPM_SHORT, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @HZ, align 4
  %151 = sdiv i32 %150, 100
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %126
  %154 = load i32, i32* @HZ, align 4
  %155 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %156 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @TPM_SHORT, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %154, i32* %160, align 4
  br label %161

161:                                              ; preds = %153, %126
  %162 = load %struct.duration_t*, %struct.duration_t** %5, align 8
  %163 = getelementptr inbounds %struct.duration_t, %struct.duration_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be32_to_cpu(i32 %164)
  %166 = call i8* @usecs_to_jiffies(i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %169 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @TPM_MEDIUM, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %167, i32* %173, align 4
  %174 = load %struct.duration_t*, %struct.duration_t** %5, align 8
  %175 = getelementptr inbounds %struct.duration_t, %struct.duration_t* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @be32_to_cpu(i32 %176)
  %178 = call i8* @usecs_to_jiffies(i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %181 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @TPM_LONG, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %179, i32* %185, align 4
  br label %186

186:                                              ; preds = %161, %125, %116
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @transmit_cmd(%struct.tpm_chip*, %struct.tpm_cmd_t*, i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
