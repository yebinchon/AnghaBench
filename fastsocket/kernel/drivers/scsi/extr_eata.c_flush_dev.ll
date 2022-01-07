; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_flush_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_flush_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hostdata = type { i64*, %struct.mscp* }
%struct.mscp = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.scsi_device* }

@MAX_MAILBOXES = common dso_local global i32 0, align 4
@READY = common dso_local global i64 0, align 8
@IN_USE = common dso_local global i64 0, align 8
@SEND_CP_DMA = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s, pid %ld, mbox %d, adapter busy, will abort.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ihdlr\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"qcomm\00", align 1
@ABORTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i64, %struct.hostdata*, i32)* @flush_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_dev(%struct.scsi_device* %0, i64 %1, %struct.hostdata* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hostdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.mscp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hostdata* %2, %struct.hostdata** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @MAX_MAILBOXES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %83, %4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %21
  %30 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %31 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @READY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %41 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IN_USE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %83

50:                                               ; preds = %39, %29
  %51 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %52 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %51, i32 0, i32 1
  %53 = load %struct.mscp*, %struct.mscp** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mscp, %struct.mscp* %53, i64 %55
  store %struct.mscp* %56, %struct.mscp** %10, align 8
  %57 = load %struct.mscp*, %struct.mscp** %10, align 8
  %58 = getelementptr inbounds %struct.mscp, %struct.mscp* %57, i32 0, i32 1
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %58, align 8
  store %struct.scsi_cmnd* %59, %struct.scsi_cmnd** %9, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load %struct.scsi_device*, %struct.scsi_device** %61, align 8
  %63 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %64 = icmp ne %struct.scsi_device* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %83

66:                                               ; preds = %50
  %67 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %68 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IN_USE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  br label %155

77:                                               ; preds = %66
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %20, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %65, %49
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %21

86:                                               ; preds = %21
  %87 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @reorder(%struct.hostdata* %87, i64 %88, i32 %89, i32* %20, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %86
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %151, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %154

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %20, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  %104 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %105 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %104, i32 0, i32 1
  %106 = load %struct.mscp*, %struct.mscp** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mscp, %struct.mscp* %106, i64 %108
  store %struct.mscp* %109, %struct.mscp** %10, align 8
  %110 = load %struct.mscp*, %struct.mscp** %10, align 8
  %111 = getelementptr inbounds %struct.mscp, %struct.mscp* %110, i32 0, i32 1
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %111, align 8
  store %struct.scsi_cmnd* %112, %struct.scsi_cmnd** %9, align 8
  %113 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mscp*, %struct.mscp** %10, align 8
  %119 = getelementptr inbounds %struct.mscp, %struct.mscp* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SEND_CP_DMA, align 4
  %122 = call i64 @do_dma(i32 %117, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %99
  %125 = load i32, i32* @KERN_INFO, align 4
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @scmd_printk(i32 %125, %struct.scsi_cmnd* %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %130, i32 %133, i32 %134)
  %136 = load i64, i64* @ABORTING, align 8
  %137 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %138 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %136, i64* %142, align 8
  br label %151

143:                                              ; preds = %99
  %144 = load i64, i64* @IN_USE, align 8
  %145 = load %struct.hostdata*, %struct.hostdata** %7, align 8
  %146 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %144, i64* %150, align 8
  br label %151

151:                                              ; preds = %143, %124
  %152 = load i32, i32* %12, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %95

154:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %154, %76
  %156 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %16, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 1, label %158
  ]

158:                                              ; preds = %155, %155
  ret void

159:                                              ; preds = %155
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @reorder(%struct.hostdata*, i64, i32, i32*, i32) #2

declare dso_local i64 @do_dma(i32, i32, i32) #2

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
