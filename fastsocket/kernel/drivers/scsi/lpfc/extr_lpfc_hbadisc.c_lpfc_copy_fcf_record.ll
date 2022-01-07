; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_copy_fcf_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_copy_fcf_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_fcf_rec = type { i8**, i32, i8*, i8**, i8** }
%struct.fcf_record = type { i32 }

@lpfc_fcf_record_fab_name_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_6 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fab_name_7 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_5 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_6 = common dso_local global i32 0, align 4
@lpfc_fcf_record_switch_name_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_fcf_rec*, %struct.fcf_record*)* @lpfc_copy_fcf_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_copy_fcf_record(%struct.lpfc_fcf_rec* %0, %struct.fcf_record* %1) #0 {
  %3 = alloca %struct.lpfc_fcf_rec*, align 8
  %4 = alloca %struct.fcf_record*, align 8
  store %struct.lpfc_fcf_rec* %0, %struct.lpfc_fcf_rec** %3, align 8
  store %struct.fcf_record* %1, %struct.fcf_record** %4, align 8
  %5 = load i32, i32* @lpfc_fcf_record_fab_name_0, align 4
  %6 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %7 = call i8* @bf_get(i32 %5, %struct.fcf_record* %6)
  %8 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %8, i32 0, i32 4
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @lpfc_fcf_record_fab_name_1, align 4
  %13 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %14 = call i8* @bf_get(i32 %12, %struct.fcf_record* %13)
  %15 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %14, i8** %18, align 8
  %19 = load i32, i32* @lpfc_fcf_record_fab_name_2, align 4
  %20 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %21 = call i8* @bf_get(i32 %19, %struct.fcf_record* %20)
  %22 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %22, i32 0, i32 4
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  store i8* %21, i8** %25, align 8
  %26 = load i32, i32* @lpfc_fcf_record_fab_name_3, align 4
  %27 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %28 = call i8* @bf_get(i32 %26, %struct.fcf_record* %27)
  %29 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %29, i32 0, i32 4
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* @lpfc_fcf_record_fab_name_4, align 4
  %34 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %35 = call i8* @bf_get(i32 %33, %struct.fcf_record* %34)
  %36 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %36, i32 0, i32 4
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 4
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* @lpfc_fcf_record_fab_name_5, align 4
  %41 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %42 = call i8* @bf_get(i32 %40, %struct.fcf_record* %41)
  %43 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %43, i32 0, i32 4
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 5
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* @lpfc_fcf_record_fab_name_6, align 4
  %48 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %49 = call i8* @bf_get(i32 %47, %struct.fcf_record* %48)
  %50 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %50, i32 0, i32 4
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 6
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* @lpfc_fcf_record_fab_name_7, align 4
  %55 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %56 = call i8* @bf_get(i32 %54, %struct.fcf_record* %55)
  %57 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %57, i32 0, i32 4
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 7
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* @lpfc_fcf_record_mac_0, align 4
  %62 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %63 = call i8* @bf_get(i32 %61, %struct.fcf_record* %62)
  %64 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* @lpfc_fcf_record_mac_1, align 4
  %69 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %70 = call i8* @bf_get(i32 %68, %struct.fcf_record* %69)
  %71 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %71, i32 0, i32 3
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %70, i8** %74, align 8
  %75 = load i32, i32* @lpfc_fcf_record_mac_2, align 4
  %76 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %77 = call i8* @bf_get(i32 %75, %struct.fcf_record* %76)
  %78 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  store i8* %77, i8** %81, align 8
  %82 = load i32, i32* @lpfc_fcf_record_mac_3, align 4
  %83 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %84 = call i8* @bf_get(i32 %82, %struct.fcf_record* %83)
  %85 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 3
  store i8* %84, i8** %88, align 8
  %89 = load i32, i32* @lpfc_fcf_record_mac_4, align 4
  %90 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %91 = call i8* @bf_get(i32 %89, %struct.fcf_record* %90)
  %92 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %93 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %92, i32 0, i32 3
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 4
  store i8* %91, i8** %95, align 8
  %96 = load i32, i32* @lpfc_fcf_record_mac_5, align 4
  %97 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %98 = call i8* @bf_get(i32 %96, %struct.fcf_record* %97)
  %99 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %100 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %99, i32 0, i32 3
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 5
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %104 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %105 = call i8* @bf_get(i32 %103, %struct.fcf_record* %104)
  %106 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %109 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @lpfc_fcf_record_switch_name_0, align 4
  %114 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %115 = call i8* @bf_get(i32 %113, %struct.fcf_record* %114)
  %116 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %117 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %115, i8** %119, align 8
  %120 = load i32, i32* @lpfc_fcf_record_switch_name_1, align 4
  %121 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %122 = call i8* @bf_get(i32 %120, %struct.fcf_record* %121)
  %123 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %124 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* @lpfc_fcf_record_switch_name_2, align 4
  %128 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %129 = call i8* @bf_get(i32 %127, %struct.fcf_record* %128)
  %130 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %131 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  store i8* %129, i8** %133, align 8
  %134 = load i32, i32* @lpfc_fcf_record_switch_name_3, align 4
  %135 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %136 = call i8* @bf_get(i32 %134, %struct.fcf_record* %135)
  %137 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %137, i32 0, i32 0
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 3
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* @lpfc_fcf_record_switch_name_4, align 4
  %142 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %143 = call i8* @bf_get(i32 %141, %struct.fcf_record* %142)
  %144 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 4
  store i8* %143, i8** %147, align 8
  %148 = load i32, i32* @lpfc_fcf_record_switch_name_5, align 4
  %149 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %150 = call i8* @bf_get(i32 %148, %struct.fcf_record* %149)
  %151 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 5
  store i8* %150, i8** %154, align 8
  %155 = load i32, i32* @lpfc_fcf_record_switch_name_6, align 4
  %156 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %157 = call i8* @bf_get(i32 %155, %struct.fcf_record* %156)
  %158 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %159 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 6
  store i8* %157, i8** %161, align 8
  %162 = load i32, i32* @lpfc_fcf_record_switch_name_7, align 4
  %163 = load %struct.fcf_record*, %struct.fcf_record** %4, align 8
  %164 = call i8* @bf_get(i32 %162, %struct.fcf_record* %163)
  %165 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %3, align 8
  %166 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 7
  store i8* %164, i8** %168, align 8
  ret void
}

declare dso_local i8* @bf_get(i32, %struct.fcf_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
