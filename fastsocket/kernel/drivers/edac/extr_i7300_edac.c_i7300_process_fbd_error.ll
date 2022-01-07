; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_process_fbd_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_process_fbd_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i32, i32, i32 }

@FERR_FAT_FBD = common dso_local global i32 0, align 4
@FERR_FAT_FBD_ERR_MASK = common dso_local global i64 0, align 8
@ferr_fat_fbd_name = common dso_local global i32 0, align 4
@NRECMEMA = common dso_local global i32 0, align 4
@NRECMEMB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"FATAL (Branch=%d DRAM-Bank=%d %s RAS=%d CAS=%d Err=0x%lx (%s))\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RDWR\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@FERR_NF_FBD = common dso_local global i32 0, align 4
@FERR_NF_FBD_ERR_MASK = common dso_local global i64 0, align 8
@ferr_nf_fbd_name = common dso_local global i32 0, align 4
@FERR_GLOBAL_LO = common dso_local global i32 0, align 4
@REDMEMA = common dso_local global i32 0, align 4
@RECMEMA = common dso_local global i32 0, align 4
@RECMEMB = common dso_local global i32 0, align 4
@REDMEMB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [108 x i8] c"Corrected error (Branch=%d, Channel %d),  DRAM-Bank=%d %s RAS=%d CAS=%d, CE Err=0x%lx, Syndrome=0x%08x(%s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i7300_process_fbd_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7300_process_fbd_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i7300_pvt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 0
  %19 = load %struct.i7300_pvt*, %struct.i7300_pvt** %18, align 8
  store %struct.i7300_pvt* %19, %struct.i7300_pvt** %3, align 8
  %20 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %21 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FERR_FAT_FBD, align 4
  %24 = call i32 @pci_read_config_dword(i32 %22, i32 %23, i64* %5)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FERR_FAT_FBD_ERR_MASK, align 8
  %27 = and i64 %25, %26
  %28 = call i64 @unlikely(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %1
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @FERR_FAT_FBD_ERR_MASK, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i32, i32* @ferr_fat_fbd_name, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i64 @find_first_bit(i64* %14, i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i32, i32* @ferr_fat_fbd_name, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i8* @GET_ERR_FROM_TABLE(i32 %37, i64 %38)
  store i8* %39, i8** %15, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @GET_FBD_FAT_IDX(i64 %40)
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %7, align 4
  %45 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %46 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NRECMEMA, align 4
  %49 = call i32 @pci_read_config_word(i32 %47, i32 %48, i32* %6)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @NRECMEMA_BANK(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @NRECMEMA_RANK(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %55 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NRECMEMB, align 4
  %58 = call i32 @pci_read_config_dword(i32 %56, i32 %57, i64* %5)
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @NRECMEMB_IS_WR(i64 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @NRECMEMB_CAS(i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @NRECMEMB_RAS(i64 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %66 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %14, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %67, i32 %68, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i8* %74, i32 %75, i32 %76, i64 %77, i8* %78)
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = shl i32 %82, 1
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 1
  %86 = add i32 %85, 1
  %87 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %88 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info* %80, i32 %81, i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %30, %1
  %92 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %93 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FERR_NF_FBD, align 4
  %96 = call i32 @pci_read_config_dword(i32 %94, i32 %95, i64* %5)
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @FERR_NF_FBD_ERR_MASK, align 8
  %99 = and i64 %97, %98
  %100 = call i64 @unlikely(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %186

102:                                              ; preds = %91
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @FERR_NF_FBD_ERR_MASK, align 8
  %105 = and i64 %103, %104
  store i64 %105, i64* %14, align 8
  %106 = load i32, i32* @ferr_nf_fbd_name, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i64 @find_first_bit(i64* %14, i32 %107)
  store i64 %108, i64* %4, align 8
  %109 = load i32, i32* @ferr_nf_fbd_name, align 4
  %110 = load i64, i64* %4, align 8
  %111 = call i8* @GET_ERR_FROM_TABLE(i32 %109, i64 %110)
  store i8* %111, i8** %15, align 8
  %112 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %113 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FERR_GLOBAL_LO, align 4
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @pci_write_config_dword(i32 %114, i32 %115, i64 %116)
  %118 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %119 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @REDMEMA, align 4
  %122 = call i32 @pci_read_config_dword(i32 %120, i32 %121, i64* %13)
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @GET_FBD_FAT_IDX(i64 %123)
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  store i32 %127, i32* %7, align 4
  %128 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %129 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RECMEMA, align 4
  %132 = call i32 @pci_read_config_word(i32 %130, i32 %131, i32* %6)
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @RECMEMA_BANK(i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @RECMEMA_RANK(i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %138 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RECMEMB, align 4
  %141 = call i32 @pci_read_config_dword(i32 %139, i32 %140, i64* %5)
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @RECMEMB_IS_WR(i64 %142)
  store i32 %143, i32* %16, align 4
  %144 = load i64, i64* %5, align 8
  %145 = call i32 @RECMEMB_CAS(i64 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @RECMEMB_RAS(i64 %146)
  store i32 %147, i32* %12, align 4
  %148 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %149 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @REDMEMB, align 4
  %152 = call i32 @pci_read_config_dword(i32 %150, i32 %151, i64* %5)
  %153 = load i32, i32* %7, align 4
  %154 = shl i32 %153, 1
  store i32 %154, i32* %8, align 4
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @IS_SECOND_CH(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %102
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %158, %102
  %162 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %163 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i64, i64* %14, align 8
  %176 = load i64, i64* %13, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %164, i32 %165, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %167, i32 %168, i8* %172, i32 %173, i32 %174, i64 %175, i64 %176, i8* %177)
  %179 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %183 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info* %179, i32 %180, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %161, %91
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @find_first_bit(i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @GET_ERR_FROM_TABLE(i32, i64) #1

declare dso_local i32 @GET_FBD_FAT_IDX(i64) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @NRECMEMA_BANK(i32) #1

declare dso_local i32 @NRECMEMA_RANK(i32) #1

declare dso_local i32 @NRECMEMB_IS_WR(i64) #1

declare dso_local i32 @NRECMEMB_CAS(i64) #1

declare dso_local i32 @NRECMEMB_RAS(i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @RECMEMA_BANK(i32) #1

declare dso_local i32 @RECMEMA_RANK(i32) #1

declare dso_local i32 @RECMEMB_IS_WR(i64) #1

declare dso_local i32 @RECMEMB_CAS(i64) #1

declare dso_local i32 @RECMEMB_RAS(i64) #1

declare dso_local i64 @IS_SECOND_CH(i64) #1

declare dso_local i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
