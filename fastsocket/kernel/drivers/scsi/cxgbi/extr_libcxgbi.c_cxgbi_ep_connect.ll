; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }
%struct.cxgbi_endpoint = type { %struct.cxgbi_hba*, %struct.cxgbi_sock* }
%struct.cxgbi_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbi_sock = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cxgbi_sock*)*, %struct.cxgbi_hba** }
%struct.Scsi_Host = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"shost 0x%p, non_blocking %d, dst_addr 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"shost 0x%p, priv NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Could not connect through requested host %uhba 0x%p != 0x%p (%u).\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@CTP_CONNECTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"csk 0x%p is closing.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"iscsi alloc ep, OOM.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"ep 0x%p, cep 0x%p, csk 0x%p, hba 0x%p,%s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_endpoint* @cxgbi_ep_connect(%struct.Scsi_Host* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_endpoint*, align 8
  %9 = alloca %struct.cxgbi_endpoint*, align 8
  %10 = alloca %struct.cxgbi_hba*, align 8
  %11 = alloca %struct.cxgbi_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cxgbi_hba* null, %struct.cxgbi_hba** %10, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = call i32 (i32, i8*, ...) @log_debug(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.Scsi_Host* %20, i32 %21, %struct.sockaddr* %22)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %25 = icmp ne %struct.Scsi_Host* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = call %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host* %27)
  store %struct.cxgbi_hba* %28, %struct.cxgbi_hba** %10, align 8
  %29 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %30 = icmp ne %struct.cxgbi_hba* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %33 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.Scsi_Host* %32)
  br label %163

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %37 = call %struct.cxgbi_sock* @cxgbi_check_route(%struct.sockaddr* %36)
  store %struct.cxgbi_sock* %37, %struct.cxgbi_sock** %11, align 8
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %39 = call i64 @IS_ERR(%struct.cxgbi_sock* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %43 = bitcast %struct.cxgbi_sock* %42 to %struct.iscsi_endpoint*
  store %struct.iscsi_endpoint* %43, %struct.iscsi_endpoint** %4, align 8
  br label %166

44:                                               ; preds = %35
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %46 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %45)
  %47 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %48 = icmp ne %struct.cxgbi_hba* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %53, align 8
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %56 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.cxgbi_hba*, %struct.cxgbi_hba** %54, i64 %57
  %59 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %58, align 8
  store %struct.cxgbi_hba* %59, %struct.cxgbi_hba** %10, align 8
  br label %95

60:                                               ; preds = %44
  %61 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %62 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %63 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %65, align 8
  %67 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %68 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.cxgbi_hba*, %struct.cxgbi_hba** %66, i64 %69
  %71 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %70, align 8
  %72 = icmp ne %struct.cxgbi_hba* %61, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %60
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %78 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %79 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %81, align 8
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.cxgbi_hba*, %struct.cxgbi_hba** %82, i64 %85
  %87 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %86, align 8
  %88 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %89 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %76, %struct.cxgbi_hba* %77, %struct.cxgbi_hba* %87, i64 %90)
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %158

94:                                               ; preds = %60
  br label %95

95:                                               ; preds = %94, %49
  %96 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %97 = call i32 @sock_get_port(%struct.cxgbi_sock* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %158

101:                                              ; preds = %95
  %102 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %103 = load i32, i32* @CTP_CONNECTING, align 4
  %104 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %102, i32 %103)
  %105 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %106 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %108, align 8
  %110 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %111 = call i32 %109(%struct.cxgbi_sock* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %158

115:                                              ; preds = %101
  %116 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %117 = call i64 @cxgbi_sock_is_closing(%struct.cxgbi_sock* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32, i32* @ENOSPC, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %123 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %122)
  br label %158

124:                                              ; preds = %115
  %125 = call %struct.iscsi_endpoint* @iscsi_create_endpoint(i32 16)
  store %struct.iscsi_endpoint* %125, %struct.iscsi_endpoint** %8, align 8
  %126 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %8, align 8
  %127 = icmp ne %struct.iscsi_endpoint* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %158

132:                                              ; preds = %124
  %133 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %8, align 8
  %134 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %133, i32 0, i32 0
  %135 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %134, align 8
  store %struct.cxgbi_endpoint* %135, %struct.cxgbi_endpoint** %9, align 8
  %136 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %137 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %9, align 8
  %138 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %137, i32 0, i32 1
  store %struct.cxgbi_sock* %136, %struct.cxgbi_sock** %138, align 8
  %139 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %140 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %9, align 8
  %141 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %140, i32 0, i32 0
  store %struct.cxgbi_hba* %139, %struct.cxgbi_hba** %141, align 8
  %142 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %145 = shl i32 1, %144
  %146 = or i32 %143, %145
  %147 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %8, align 8
  %148 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %9, align 8
  %149 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %150 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %151 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %10, align 8
  %152 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @log_debug(i32 %146, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), %struct.iscsi_endpoint* %147, %struct.cxgbi_endpoint* %148, %struct.cxgbi_sock* %149, %struct.cxgbi_hba* %150, i32 %155)
  %157 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %8, align 8
  store %struct.iscsi_endpoint* %157, %struct.iscsi_endpoint** %4, align 8
  br label %166

158:                                              ; preds = %128, %119, %114, %100, %73
  %159 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %160 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %159)
  %161 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %11, align 8
  %162 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %161)
  br label %163

163:                                              ; preds = %158, %31
  %164 = load i32, i32* %12, align 4
  %165 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %164)
  store %struct.iscsi_endpoint* %165, %struct.iscsi_endpoint** %4, align 8
  br label %166

166:                                              ; preds = %163, %132, %41
  %167 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  ret %struct.iscsi_endpoint* %167
}

declare dso_local i32 @log_debug(i32, i8*, ...) #1

declare dso_local %struct.cxgbi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.cxgbi_sock* @cxgbi_check_route(%struct.sockaddr*) #1

declare dso_local i64 @IS_ERR(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @sock_get_port(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i64 @cxgbi_sock_is_closing(%struct.cxgbi_sock*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_create_endpoint(i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local %struct.iscsi_endpoint* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
