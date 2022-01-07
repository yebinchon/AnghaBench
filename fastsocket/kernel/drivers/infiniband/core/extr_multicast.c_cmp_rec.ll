; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_cmp_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_cmp_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mcmember_rec = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MLID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec*, i32)* @cmp_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_rec(%struct.ib_sa_mcmember_rec* %0, %struct.ib_sa_mcmember_rec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_sa_mcmember_rec* %0, %struct.ib_sa_mcmember_rec** %5, align 8
  store %struct.ib_sa_mcmember_rec* %1, %struct.ib_sa_mcmember_rec** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %13, i32 0, i32 14
  %15 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %16 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %15, i32 0, i32 14
  %17 = call i64 @memcmp(i32* %14, i32* %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %205

22:                                               ; preds = %12, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %29 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %32 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %205

38:                                               ; preds = %27, %22
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IB_SA_MCMEMBER_REC_MLID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %45 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %48 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %205

54:                                               ; preds = %43, %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %57 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %58 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %59 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %62 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %65 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @check_selector(i32 %55, i32 %56, i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %205

72:                                               ; preds = %54
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %79 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %82 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %205

88:                                               ; preds = %77, %72
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %95 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %98 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %205

104:                                              ; preds = %93, %88
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %107 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %108 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %109 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %112 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %115 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @check_selector(i32 %105, i32 %106, i32 %107, i32 %110, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %205

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR, align 4
  %125 = load i32, i32* @IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME, align 4
  %126 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %127 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %130 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %133 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @check_selector(i32 %123, i32 %124, i32 %125, i32 %128, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %205

140:                                              ; preds = %122
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %147 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %150 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %205

156:                                              ; preds = %145, %140
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %163 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %166 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %205

172:                                              ; preds = %161, %156
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %179 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %182 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %205

188:                                              ; preds = %177, %172
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @IB_SA_MCMEMBER_REC_SCOPE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %5, align 8
  %195 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %6, align 8
  %198 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %205

204:                                              ; preds = %193, %188
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %204, %201, %185, %169, %153, %137, %119, %101, %85, %69, %51, %35, %19
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @check_selector(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
