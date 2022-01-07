; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i32, i32, %struct.TYPE_3__, %struct.fc_lport* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fc_lport = type { %struct.TYPE_4__, %struct.fc_disc }
%struct.TYPE_4__ = type { i32, i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)*, %struct.fc_rport_priv* (%struct.fc_lport*, i32)* }
%struct.fc_disc = type { i32, i32 }
%struct.fc_ct_hdr = type { i32, i32, i32 }
%struct.fc_ns_gid_pn = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"GPN_ID accepted.  WWPN changed. Port-id %6.6x wwpn %16.16llx\0A\00", align 1
@FC_FS_RJT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"GPN_ID rejected reason %x exp %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GPN_ID unexpected response code %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_disc_gpn_id_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_gpn_id_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_rport_priv*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca %struct.fc_disc*, align 8
  %11 = alloca %struct.fc_ct_hdr*, align 8
  %12 = alloca %struct.fc_ns_gid_pn*, align 8
  %13 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %15, %struct.fc_rport_priv** %7, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 3
  %18 = load %struct.fc_lport*, %struct.fc_lport** %17, align 8
  store %struct.fc_lport* %18, %struct.fc_lport** %9, align 8
  %19 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 1
  store %struct.fc_disc* %20, %struct.fc_disc** %10, align 8
  %21 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %22 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.fc_frame* %24)
  %26 = load i32, i32* @FC_EX_CLOSED, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %166

30:                                               ; preds = %3
  %31 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %32 = call i64 @IS_ERR(%struct.fc_frame* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %161

35:                                               ; preds = %30
  %36 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %37 = call %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame* %36, i32 12)
  store %struct.fc_ct_hdr* %37, %struct.fc_ct_hdr** %11, align 8
  %38 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %39 = icmp ne %struct.fc_ct_hdr* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %161

41:                                               ; preds = %35
  %42 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* @FC_FS_ACC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %131

48:                                               ; preds = %41
  %49 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %50 = call i32 @fr_len(%struct.fc_frame* %49)
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 20
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %161

54:                                               ; preds = %48
  %55 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %56 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %55, i64 1
  %57 = bitcast %struct.fc_ct_hdr* %56 to %struct.fc_ns_gid_pn*
  store %struct.fc_ns_gid_pn* %57, %struct.fc_ns_gid_pn** %12, align 8
  %58 = load %struct.fc_ns_gid_pn*, %struct.fc_ns_gid_pn** %12, align 8
  %59 = getelementptr inbounds %struct.fc_ns_gid_pn, %struct.fc_ns_gid_pn* %58, i32 0, i32 0
  %60 = call i32 @get_unaligned_be64(i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %62 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %69 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %119

71:                                               ; preds = %54
  %72 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %73 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %71
  %79 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %80 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %81 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %79, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %85)
  %87 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %88 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %89, align 8
  %91 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %92 = call i32 %90(%struct.fc_rport_priv* %91)
  %93 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %94 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load %struct.fc_rport_priv* (%struct.fc_lport*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport*, i32)** %95, align 8
  %97 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %98 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %99 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.fc_rport_priv* %96(%struct.fc_lport* %97, i32 %101)
  store %struct.fc_rport_priv* %102, %struct.fc_rport_priv** %8, align 8
  %103 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %104 = icmp ne %struct.fc_rport_priv* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %78
  %106 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %107 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %110 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %112 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %113, align 8
  %115 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %116 = call i32 %114(%struct.fc_rport_priv* %115)
  br label %117

117:                                              ; preds = %105, %78
  br label %166

118:                                              ; preds = %71
  br label %119

119:                                              ; preds = %118, %66
  %120 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %121 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %124 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %126 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %127, align 8
  %129 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %130 = call i32 %128(%struct.fc_rport_priv* %129)
  br label %165

131:                                              ; preds = %41
  %132 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %133 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ntohs(i32 %134)
  %136 = load i64, i64* @FC_FS_RJT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %140 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %141 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %145 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %143, i32 %146)
  %148 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %149 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %150, align 8
  %152 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %153 = call i32 %151(%struct.fc_rport_priv* %152)
  br label %164

154:                                              ; preds = %131
  %155 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %156 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %157 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @ntohs(i32 %158)
  %160 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %154, %53, %40, %34
  %162 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %163 = call i32 @fc_disc_restart(%struct.fc_disc* %162)
  br label %164

164:                                              ; preds = %161, %138
  br label %165

165:                                              ; preds = %164, %119
  br label %166

166:                                              ; preds = %165, %117, %29
  %167 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %168 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %171 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %170, i32 0, i32 0
  %172 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %173 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @kref_put(i32* %171, i32 %175)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*, i64, ...) #1

declare dso_local i32 @fc_disc_restart(%struct.fc_disc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
