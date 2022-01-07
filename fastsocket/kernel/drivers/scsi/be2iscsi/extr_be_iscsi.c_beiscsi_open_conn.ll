; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_open_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_open_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32, i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { %struct.TYPE_2__, %struct.iscsi_endpoint** }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.tcp_connect_and_offload_out = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BS_%d : In beiscsi_open_conn\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"BS_%d : No free cid available\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"BS_%d : In beiscsi_open_conn, ep_cid=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"BS_%d : Failed to allocate memory for mgmt_open_connection\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"BS_%d : mgmt_open_connection Failed for cid=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"BS_%d : mgmt_open_connection Failed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"BS_%d : mgmt_open_connection Success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, %struct.sockaddr*, %struct.sockaddr*, i32)* @beiscsi_open_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_open_conn(%struct.iscsi_endpoint* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.beiscsi_endpoint*, align 8
  %11 = alloca %struct.beiscsi_hba*, align 8
  %12 = alloca %struct.tcp_connect_and_offload_out*, align 8
  %13 = alloca %struct.be_dma_mem, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %16, i32 0, i32 0
  %18 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %17, align 8
  store %struct.beiscsi_endpoint* %18, %struct.beiscsi_endpoint** %10, align 8
  %19 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %20 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %19, i32 0, i32 3
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %20, align 8
  store %struct.beiscsi_hba* %21, %struct.beiscsi_hba** %11, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %27 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %29 = call i32 @beiscsi_get_cid(%struct.beiscsi_hba* %28)
  %30 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %31 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %33 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %40 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %5, align 4
  br label %175

42:                                               ; preds = %4
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %46 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %47 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 1
  %53 = load %struct.iscsi_endpoint**, %struct.iscsi_endpoint*** %52, align 8
  %54 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %55 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @BE_GET_CRI_FROM_CID(i32 %56)
  %58 = getelementptr inbounds %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %53, i64 %57
  store %struct.iscsi_endpoint* %50, %struct.iscsi_endpoint** %58, align 8
  %59 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %60 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %62 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %66 = call i32* @pci_alloc_consistent(i32 %64, i32 4, i32* %65)
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %42
  %72 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %75 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %77 = call i32 @beiscsi_free_ep(%struct.beiscsi_endpoint* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %175

80:                                               ; preds = %42
  %81 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memset(i32* %83, i32 0, i32 %85)
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %89 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %90 = call i32 @mgmt_open_connection(%struct.beiscsi_hba* %87, %struct.sockaddr* %88, %struct.beiscsi_endpoint* %89, %struct.be_dma_mem* %13)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ule i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %80
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %97 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %98 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %102 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pci_free_consistent(i32 %104, i32 %106, i32* %108, i32 %110)
  %112 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %113 = call i32 @beiscsi_free_ep(%struct.beiscsi_endpoint* %112)
  %114 = load i32, i32* @EAGAIN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %175

116:                                              ; preds = %80
  %117 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %117, i32 %118, i32* null, i32* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %116
  %125 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %128 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %129 = or i32 %127, %128
  %130 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %125, i32 %126, i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %132 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pci_free_consistent(i32 %134, i32 %136, i32* %138, i32 %140)
  %142 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %143 = call i32 @beiscsi_free_ep(%struct.beiscsi_endpoint* %142)
  %144 = load i32, i32* @EBUSY, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %175

146:                                              ; preds = %116
  %147 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = bitcast i32* %148 to %struct.tcp_connect_and_offload_out*
  store %struct.tcp_connect_and_offload_out* %149, %struct.tcp_connect_and_offload_out** %12, align 8
  %150 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %151 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %150, i32 0, i32 0
  %152 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %151, align 8
  store %struct.beiscsi_endpoint* %152, %struct.beiscsi_endpoint** %10, align 8
  %153 = load %struct.tcp_connect_and_offload_out*, %struct.tcp_connect_and_offload_out** %12, align 8
  %154 = getelementptr inbounds %struct.tcp_connect_and_offload_out, %struct.tcp_connect_and_offload_out* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %157 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %10, align 8
  %159 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %161 = load i32, i32* @KERN_INFO, align 4
  %162 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %163 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %164 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %165 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @pci_free_consistent(i32 %167, i32 %169, i32* %171, i32 %173)
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %146, %124, %93, %71, %36
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @beiscsi_get_cid(%struct.beiscsi_hba*) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_free_ep(%struct.beiscsi_endpoint*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mgmt_open_connection(%struct.beiscsi_hba*, %struct.sockaddr*, %struct.beiscsi_endpoint*, %struct.be_dma_mem*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
