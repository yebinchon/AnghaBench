; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_process_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_process_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, i64, i32, i32, i32, %struct.aen* }
%struct.aen = type { i32* }

@MBOX_AEN_REG_COUNT = common dso_local global i32 0, align 4
@MAX_AEN_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"qla4xxx(%ld): AEN[%d]=0x%08x, mbx1=0x%08x mbx2=0x%08x mbx3=0x%08x mbx4=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"scsi%ld: AEN[%d] %04x, index [%d] state=%04x FLUSHED!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_process_aen(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aen*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MBOX_AEN_REG_COUNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 2
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %142, %2
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %147

26:                                               ; preds = %18
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 5
  %29 = load %struct.aen*, %struct.aen** %28, align 8
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.aen, %struct.aen* %29, i64 %32
  store %struct.aen* %33, %struct.aen** %7, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %49, %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MBOX_AEN_REG_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.aen*, %struct.aen** %7, align 8
  %40 = getelementptr inbounds %struct.aen, %struct.aen* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %13, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @MAX_AEN_ENTRIES, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %52
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 2
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 1
  br label %91

87:                                               ; preds = %70
  %88 = load i32, i32* @MAX_AEN_ENTRIES, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i64 [ %86, %82 ], [ %90, %87 ]
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds i32, i32* %13, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = getelementptr inbounds i32, i32* %13, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds i32, i32* %13, i64 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds i32, i32* %13, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds i32, i32* %13, i64 4
  %103 = load i32, i32* %102, align 16
  %104 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103)
  %105 = call i32 @DEBUG2(i32 %104)
  %106 = getelementptr inbounds i32, i32* %13, i64 0
  %107 = load i32, i32* %106, align 16
  switch i32 %107, label %142 [
    i32 129, label %108
  ]

108:                                              ; preds = %91
  %109 = load i32, i32* %4, align 4
  switch i32 %109, label %127 [
    i32 130, label %110
    i32 128, label %126
  ]

110:                                              ; preds = %108
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %112 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %115 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds i32, i32* %13, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = getelementptr inbounds i32, i32* %13, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds i32, i32* %13, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %117, i32 %119, i32 %121, i32 %123)
  %125 = call i32 @DEBUG2(i32 %124)
  br label %141

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %108, %126
  %128 = getelementptr inbounds i32, i32* %13, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %133 = getelementptr inbounds i32, i32* %13, i64 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds i32, i32* %13, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds i32, i32* %13, i64 4
  %138 = load i32, i32* %137, align 16
  %139 = call i32 @qla4xxx_process_ddb_changed(%struct.scsi_qla_host* %132, i32 %134, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %131, %127
  br label %141

141:                                              ; preds = %140, %110
  br label %142

142:                                              ; preds = %141, %91
  %143 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %144 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %143, i32 0, i32 2
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @spin_lock_irqsave(i32* %144, i64 %145)
  br label %18

147:                                              ; preds = %18
  %148 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %149 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %148, i32 0, i32 2
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %152)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @DEBUG2(i32) #2

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, ...) #2

declare dso_local i32 @qla4xxx_process_ddb_changed(%struct.scsi_qla_host*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
