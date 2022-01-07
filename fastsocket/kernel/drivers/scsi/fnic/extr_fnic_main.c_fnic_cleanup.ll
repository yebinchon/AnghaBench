; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@fnic_free_wq_buf = common dso_local global i32 0, align 4
@fnic_free_rq_buf = common dso_local global i32 0, align 4
@fnic_wq_copy_cleanup_handler = common dso_local global i32 0, align 4
@FNIC_SGL_NUM_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*)* @fnic_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_cleanup(%struct.fnic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  %6 = load %struct.fnic*, %struct.fnic** %3, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vnic_dev_disable(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.fnic*, %struct.fnic** %3, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.fnic*, %struct.fnic** %3, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @vnic_intr_mask(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.fnic*, %struct.fnic** %3, align 8
  %31 = getelementptr inbounds %struct.fnic, %struct.fnic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.fnic*, %struct.fnic** %3, align 8
  %36 = getelementptr inbounds %struct.fnic, %struct.fnic* %35, i32 0, i32 10
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @vnic_rq_disable(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %217

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %28

50:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fnic*, %struct.fnic** %3, align 8
  %54 = getelementptr inbounds %struct.fnic, %struct.fnic* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.fnic*, %struct.fnic** %3, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 11
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @vnic_wq_disable(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %217

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %51

73:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.fnic*, %struct.fnic** %3, align 8
  %77 = getelementptr inbounds %struct.fnic, %struct.fnic* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.fnic*, %struct.fnic** %3, align 8
  %82 = getelementptr inbounds %struct.fnic, %struct.fnic* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @vnic_wq_copy_disable(i32* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %217

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load %struct.fnic*, %struct.fnic** %3, align 8
  %98 = call i32 @fnic_wq_copy_cmpl_handler(%struct.fnic* %97, i32 -1)
  %99 = load %struct.fnic*, %struct.fnic** %3, align 8
  %100 = call i32 @fnic_wq_cmpl_handler(%struct.fnic* %99, i32 -1)
  %101 = load %struct.fnic*, %struct.fnic** %3, align 8
  %102 = call i32 @fnic_rq_cmpl_handler(%struct.fnic* %101, i32 -1)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %118, %96
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.fnic*, %struct.fnic** %3, align 8
  %106 = getelementptr inbounds %struct.fnic, %struct.fnic* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load %struct.fnic*, %struct.fnic** %3, align 8
  %111 = getelementptr inbounds %struct.fnic, %struct.fnic* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* @fnic_free_wq_buf, align 4
  %117 = call i32 @vnic_wq_clean(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %103

121:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %137, %121
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.fnic*, %struct.fnic** %3, align 8
  %125 = getelementptr inbounds %struct.fnic, %struct.fnic* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct.fnic*, %struct.fnic** %3, align 8
  %130 = getelementptr inbounds %struct.fnic, %struct.fnic* %129, i32 0, i32 10
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* @fnic_free_rq_buf, align 4
  %136 = call i32 @vnic_rq_clean(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %4, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %122

140:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.fnic*, %struct.fnic** %3, align 8
  %144 = getelementptr inbounds %struct.fnic, %struct.fnic* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ult i32 %142, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.fnic*, %struct.fnic** %3, align 8
  %149 = getelementptr inbounds %struct.fnic, %struct.fnic* %148, i32 0, i32 9
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* @fnic_wq_copy_cleanup_handler, align 4
  %155 = call i32 @vnic_wq_copy_clean(i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %4, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %141

159:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %174, %159
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.fnic*, %struct.fnic** %3, align 8
  %163 = getelementptr inbounds %struct.fnic, %struct.fnic* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load %struct.fnic*, %struct.fnic** %3, align 8
  %168 = getelementptr inbounds %struct.fnic, %struct.fnic* %167, i32 0, i32 8
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = call i32 @vnic_cq_clean(i32* %172)
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %4, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %160

177:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %192, %177
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.fnic*, %struct.fnic** %3, align 8
  %181 = getelementptr inbounds %struct.fnic, %struct.fnic* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ult i32 %179, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = load %struct.fnic*, %struct.fnic** %3, align 8
  %186 = getelementptr inbounds %struct.fnic, %struct.fnic* %185, i32 0, i32 7
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i32 @vnic_intr_clean(i32* %190)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %4, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %178

195:                                              ; preds = %178
  %196 = load %struct.fnic*, %struct.fnic** %3, align 8
  %197 = getelementptr inbounds %struct.fnic, %struct.fnic* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @mempool_destroy(i32 %198)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %213, %195
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @FNIC_SGL_NUM_CACHES, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load %struct.fnic*, %struct.fnic** %3, align 8
  %206 = getelementptr inbounds %struct.fnic, %struct.fnic* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @mempool_destroy(i32 %211)
  br label %213

213:                                              ; preds = %204
  %214 = load i32, i32* %4, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %4, align 4
  br label %200

216:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %216, %90, %67, %44
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @vnic_dev_disable(i32) #1

declare dso_local i32 @vnic_intr_mask(i32*) #1

declare dso_local i32 @vnic_rq_disable(i32*) #1

declare dso_local i32 @vnic_wq_disable(i32*) #1

declare dso_local i32 @vnic_wq_copy_disable(i32*) #1

declare dso_local i32 @fnic_wq_copy_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_wq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_rq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @vnic_wq_clean(i32*, i32) #1

declare dso_local i32 @vnic_rq_clean(i32*, i32) #1

declare dso_local i32 @vnic_wq_copy_clean(i32*, i32) #1

declare dso_local i32 @vnic_cq_clean(i32*) #1

declare dso_local i32 @vnic_intr_clean(i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
