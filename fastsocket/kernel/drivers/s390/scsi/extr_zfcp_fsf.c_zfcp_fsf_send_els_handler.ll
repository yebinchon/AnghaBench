; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_3__*, %struct.zfcp_send_els* }
%struct.TYPE_3__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.zfcp_send_els = type { i32, i32 (i32)*, i32, i32, %struct.zfcp_port* }
%struct.zfcp_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_LS_ADISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_els_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_els_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_send_els*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %7, align 8
  store %struct.zfcp_send_els* %8, %struct.zfcp_send_els** %3, align 8
  %9 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %9, i32 0, i32 4
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %11, %struct.zfcp_port** %4, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.fsf_qtcb_header* %15, %struct.fsf_qtcb_header** %5, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %83

27:                                               ; preds = %1
  %28 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %29 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %76 [
    i32 136, label %31
    i32 131, label %36
    i32 138, label %39
    i32 137, label %66
    i32 135, label %66
    i32 134, label %66
    i32 133, label %66
    i32 139, label %67
    i32 132, label %75
  ]

31:                                               ; preds = %27
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %33 = call i32 @zfcp_dbf_san_els_response(%struct.zfcp_fsf_req* %32)
  %34 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %34, i32 0, i32 3
  store i32 0, i32* %35, align 4
  br label %82

36:                                               ; preds = %27
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %38 = call i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req* %37)
  br label %82

39:                                               ; preds = %27
  %40 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %41 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %65 [
    i32 130, label %46
    i32 128, label %59
    i32 129, label %59
  ]

46:                                               ; preds = %39
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %48 = icmp ne %struct.zfcp_port* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %51 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZFCP_LS_ADISC, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %57 = call i32 @zfcp_fc_test_link(%struct.zfcp_port* %56)
  br label %58

58:                                               ; preds = %55, %49, %46
  br label %59

59:                                               ; preds = %39, %39, %58
  %60 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %39, %59
  br label %82

66:                                               ; preds = %27, %27, %27, %27
  br label %82

67:                                               ; preds = %27
  %68 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %69 = icmp ne %struct.zfcp_port* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %72 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %73 = call i32 @zfcp_fsf_access_denied_port(%struct.zfcp_fsf_req* %71, %struct.zfcp_port* %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %82

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %27, %75
  %77 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %74, %66, %65, %36, %31
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %85 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %84, i32 0, i32 1
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = icmp ne i32 (i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %90 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %89, i32 0, i32 1
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %93 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94)
  br label %96

96:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @zfcp_dbf_san_els_response(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_fsf_access_denied_port(%struct.zfcp_fsf_req*, %struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
