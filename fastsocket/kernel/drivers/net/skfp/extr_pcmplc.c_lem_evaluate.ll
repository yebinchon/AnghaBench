; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_lem_evaluate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_lem_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%struct.s_phy = type { i32, i8*, %struct.fddi_mib_p*, %struct.lem_counter }
%struct.fddi_mib_p = type { i32, i32, i32, i32, i32, i32 }
%struct.lem_counter = type { i32, i32, i32 }

@PL_LINK_ERR_CTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LEM %c :\0A\00", align 1
@PB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"errors      : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sum_errors  : %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"current BER : 10E-%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"float BER   : 10E-(%d/100)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"avg. BER    : 10E-%d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SMT_COND_PORT_LER = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i64 0, align 8
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.s_phy*)* @lem_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lem_evaluate(%struct.s_smc* %0, %struct.s_phy* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.s_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lem_counter*, align 8
  %8 = alloca %struct.fddi_mib_p*, align 8
  %9 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.s_phy* %1, %struct.s_phy** %4, align 8
  %10 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %11 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %10, i32 0, i32 3
  store %struct.lem_counter* %11, %struct.lem_counter** %7, align 8
  %12 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %13 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %12, i32 0, i32 2
  %14 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %13, align 8
  store %struct.fddi_mib_p* %14, %struct.fddi_mib_p** %8, align 8
  %15 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %16 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %215

20:                                               ; preds = %2
  %21 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %22 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PL_LINK_ERR_CTR, align 4
  %25 = call i32 @PLC(i32 %23, i32 %24)
  %26 = call i32 @inpw(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %29 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %34 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %38 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %20
  store i32 15, i32* %5, align 4
  br label %89

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %44, 9
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 9, i32* %5, align 4
  br label %88

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 99
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 8, i32* %5, align 4
  br label %87

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 999
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 7, i32* %5, align 4
  br label %86

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 9999
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 6, i32* %5, align 4
  br label %85

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 99999
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 5, i32* %5, align 4
  br label %84

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 999999
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 4, i32* %5, align 4
  br label %83

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 9999999
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 3, i32* %5, align 4
  br label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %72, 99999999
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2, i32* %5, align 4
  br label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 999999999
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %58
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86, %50
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %90, 100
  store i32 %91, i32* %5, align 4
  %92 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %93 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 7
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 %96, 3
  %98 = add nsw i32 %95, %97
  %99 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %100 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %102 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 10
  store i32 %104, i32* %102, align 4
  %105 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %106 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 100
  %109 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %110 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %112 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %89
  %116 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %117 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %116, i32 0, i32 1
  store i32 4, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %89
  %119 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %120 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  %124 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %125 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @PB, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 66, i32 65
  %131 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %130, i32 0)
  %132 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %133 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 0)
  %136 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %137 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 0)
  %140 = load i32, i32* %5, align 4
  %141 = sdiv i32 %140, 100
  %142 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 0)
  %143 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %144 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 0)
  %147 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %148 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 0)
  br label %151

151:                                              ; preds = %123, %118
  %152 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %153 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %152, i32 0, i32 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %155 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %158 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i8*, i8** @TRUE, align 8
  br label %165

163:                                              ; preds = %151
  %164 = load i8*, i8** @FALSE, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i8* [ %162, %161 ], [ %164, %163 ]
  %167 = ptrtoint i8* %166 to i32
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %170 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %168, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %165
  %174 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %175 = load i32, i32* @SMT_COND_PORT_LER, align 4
  %176 = load i64, i64* @INDEX_PORT, align 8
  %177 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %178 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @smt_srf_event(%struct.s_smc* %174, i32 %175, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %173, %165
  %186 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %187 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %190 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %188, %191
  br i1 %192, label %193, label %215

193:                                              ; preds = %185
  %194 = load i8*, i8** @TRUE, align 8
  %195 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %196 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %198 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.lem_counter*, %struct.lem_counter** %7, align 8
  %202 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %206 = load i64, i64* @EVENT_PCM, align 8
  %207 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %208 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %206, %210
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @PC_START, align 4
  %214 = call i32 @queue_event(%struct.s_smc* %205, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %19, %193, %185
  ret void
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @DB_PCMN(i32, i8*, i32, i32) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
