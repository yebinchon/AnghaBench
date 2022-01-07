; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.lpfc_vport*, i32, i32, %struct.TYPE_8__ }
%struct.lpfc_vport = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.Scsi_Host = type { i32* }
%struct.TYPE_9__ = type { %struct.lpfc_vport*, i8* }

@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@FCF_AVAILABLE = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_UNREG_ALL_DFLT_RPIS = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i8* null, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_linkdown(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_vport**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %4, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %194

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = call i32 @lpfc_scsi_dev_block(%struct.lpfc_hba* %21)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 4
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load i32, i32* @FCF_AVAILABLE, align 4
  %27 = load i32, i32* @FCF_SCAN_DONE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 4
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %20
  %44 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load i32, i32* @FC_LBIT, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %54, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %52
  store i32 %58, i32* %56, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @spin_unlock_irq(i32* %61)
  br label %63

63:                                               ; preds = %43, %20
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %64)
  store %struct.lpfc_vport** %65, %struct.lpfc_vport*** %6, align 8
  %66 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %67 = icmp ne %struct.lpfc_vport** %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %76, i64 %78
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %79, align 8
  %81 = icmp ne %struct.lpfc_vport* %80, null
  br label %82

82:                                               ; preds = %75, %69
  %83 = phi i1 [ false, %69 ], [ %81, %75 ]
  br i1 %83, label %84, label %94

84:                                               ; preds = %82
  %85 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %85, i64 %87
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %88, align 8
  %90 = call i32 @lpfc_linkdown_port(%struct.lpfc_vport* %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %69

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %97 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %98 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %96, %struct.lpfc_vport** %97)
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.TYPE_9__* @mempool_alloc(i32 %101, i32 %102)
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %7, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %95
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = load i32, i32* @LPFC_UNREG_ALL_DFLT_RPIS, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = call i32 @lpfc_unreg_did(%struct.lpfc_hba* %107, i32 65535, i32 %108, %struct.TYPE_9__* %109)
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store %struct.lpfc_vport* %111, %struct.lpfc_vport** %113, align 8
  %114 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = load i32, i32* @MBX_NOWAIT, align 4
  %120 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %117, %struct.TYPE_9__* %118, i32 %119)
  %121 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mempool_free(%struct.TYPE_9__* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %106
  br label %130

130:                                              ; preds = %129, %95
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 2
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %132, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @FC_PT2PT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %193

139:                                              ; preds = %130
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 2
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %141, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.TYPE_9__* @mempool_alloc(i32 %146, i32 %147)
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %7, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = icmp ne %struct.TYPE_9__* %149, null
  br i1 %150, label %151, label %174

151:                                              ; preds = %139
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = call i32 @lpfc_config_link(%struct.lpfc_hba* %152, %struct.TYPE_9__* %153)
  %155 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store %struct.lpfc_vport* %158, %struct.lpfc_vport** %160, align 8
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = load i32, i32* @MBX_NOWAIT, align 4
  %164 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %161, %struct.TYPE_9__* %162, i32 %163)
  %165 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %151
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @mempool_free(%struct.TYPE_9__* %168, i32 %171)
  br label %173

173:                                              ; preds = %167, %151
  br label %174

174:                                              ; preds = %173, %139
  %175 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %176 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @spin_lock_irq(i32* %177)
  %179 = load i32, i32* @FC_PT2PT, align 4
  %180 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %181 = or i32 %179, %180
  %182 = xor i32 %181, -1
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 2
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %184, align 8
  %186 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %182
  store i32 %188, i32* %186, align 8
  %189 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %190 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @spin_unlock_irq(i32* %191)
  br label %193

193:                                              ; preds = %174, %130
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %19
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_scsi_dev_block(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_linkdown_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local %struct.TYPE_9__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_did(%struct.lpfc_hba*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
