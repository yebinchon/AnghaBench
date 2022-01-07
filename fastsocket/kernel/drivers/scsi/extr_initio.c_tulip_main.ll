; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_tulip_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_tulip_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, i64*, i64* }
%struct.scsi_ctrl_blk = type { i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32 (i32*, i32*)*, i32, i64, i32, i32 }

@INI_QUEUE_FULL = common dso_local global i32 0, align 4
@SCM_RSENS = common dso_local global i32 0, align 4
@SCF_SENSE = common dso_local global i32 0, align 4
@SCF_SG = common dso_local global i32 0, align 4
@SCF_DIR = common dso_local global i32 0, align 4
@SCSICMD_RequestSense = common dso_local global i32 0, align 4
@HOST_BAD_PHAS = common dso_local global i32 0, align 4
@SCF_DONE = common dso_local global i32 0, align 4
@SCF_POST = common dso_local global i32 0, align 4
@TUL_SStatus0 = common dso_local global i64 0, align 8
@TSS_INT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @tulip_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tulip_main(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  br label %6

6:                                                ; preds = %186, %174, %1
  %7 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %8 = call i32 @tulip_scsi(%struct.initio_host* %7)
  br label %9

9:                                                ; preds = %163, %19, %6
  %10 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %11 = call %struct.scsi_ctrl_blk* @initio_find_done_scb(%struct.initio_host* %10)
  store %struct.scsi_ctrl_blk* %11, %struct.scsi_ctrl_blk** %4, align 8
  %12 = icmp ne %struct.scsi_ctrl_blk* %11, null
  br i1 %12, label %13, label %164

13:                                               ; preds = %9
  %14 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INI_QUEUE_FULL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %21 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %30 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %28, i64* %35, align 8
  %36 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %39 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %40 = call i32 @initio_append_pend_scb(%struct.initio_host* %38, %struct.scsi_ctrl_blk* %39)
  br label %9

41:                                               ; preds = %13
  %42 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SCM_RSENS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %130, label %48

48:                                               ; preds = %41
  %49 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %129

53:                                               ; preds = %48
  %54 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SCF_SENSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %128

60:                                               ; preds = %53
  %61 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @SCF_SG, align 4
  %79 = load i32, i32* @SCF_DIR, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @SCM_RSENS, align 4
  %87 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %90 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 191
  store i32 %92, i32* %90, align 8
  %93 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %96 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %97, i32 0, i32 7
  store i32 6, i32* %98, align 4
  %99 = load i32, i32* @SCSICMD_RequestSense, align 4
  %100 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %105 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 0, i32* %107, align 4
  %108 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 0, i32* %111, align 4
  %112 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %113 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %118 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %116, i32* %120, align 4
  %121 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %121, i32 0, i32 8
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 5
  store i32 0, i32* %124, align 4
  %125 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %126 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %127 = call i32 @initio_push_pend_scb(%struct.initio_host* %125, %struct.scsi_ctrl_blk* %126)
  br label %164

128:                                              ; preds = %53
  br label %129

129:                                              ; preds = %128, %48
  br label %142

130:                                              ; preds = %41
  %131 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %132 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @HOST_BAD_PHAS, align 4
  %137 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %138 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %140, i32 0, i32 0
  store i32 2, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %129
  %143 = load i32, i32* @SCF_DONE, align 4
  %144 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %145 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %149 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SCF_POST, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %142
  %155 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %155, i32 0, i32 9
  %157 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %156, align 8
  %158 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %159 = bitcast %struct.initio_host* %158 to i32*
  %160 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %161 = bitcast %struct.scsi_ctrl_blk* %160 to i32*
  %162 = call i32 %157(i32* %159, i32* %161)
  br label %163

163:                                              ; preds = %154, %142
  br label %9

164:                                              ; preds = %67, %9
  %165 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %166 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TUL_SStatus0, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @inb(i64 %169)
  %171 = load i32, i32* @TSS_INT_PENDING, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %6

175:                                              ; preds = %164
  %176 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %177 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 1, i32* %2, align 4
  br label %187

181:                                              ; preds = %175
  %182 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %183 = call i32* @initio_find_first_pend_scb(%struct.initio_host* %182)
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %2, align 4
  br label %187

186:                                              ; preds = %181
  br label %6

187:                                              ; preds = %185, %180
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @tulip_scsi(%struct.initio_host*) #1

declare dso_local %struct.scsi_ctrl_blk* @initio_find_done_scb(%struct.initio_host*) #1

declare dso_local i32 @initio_append_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_push_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32* @initio_find_first_pend_scb(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
