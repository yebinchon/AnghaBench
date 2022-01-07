; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/boot/extr_bootloader.c_start_bootloader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/boot/extr_bootloader.c_start_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_req = type { i32, i64 }
%struct.disk_stat = type { i32, i32 }
%struct.elfhdr = type { i32*, i64, i64, i64, i64 }
%struct.elf_phdr = type { i64, i32, i64, i64, i32 }
%struct.ia64_boot_param = type { i32 }

@start_bootloader.mem = internal global [4096 x i8] zeroinitializer, align 16
@start_bootloader.buffer = internal global [1024 x i8] zeroinitializer, align 16
@SSC_CONSOLE_INIT = common dso_local global i32 0, align 4
@SSC_GET_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSC_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c": file not found, reboot now\0A\00", align 1
@SSC_READ = common dso_local global i32 0, align 4
@SSC_WAIT_COMPLETION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ELF\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"not an ELF file\0A\00", align 1
@ET_EXEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"not an ELF executable\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"kernel not for this processor\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"loading \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"failed to read phdr\0A\00", align 1
@PT_LOAD = common dso_local global i64 0, align 8
@SSC_CLOSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"starting kernel...\0A\00", align 1
@_IA64_REG_AR_KR0 = common dso_local global i32 0, align 4
@SSC_LOAD_SYMBOLS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"kernel returned!\0A\00", align 1
@SSC_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_bootloader() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_req, align 8
  %5 = alloca %struct.disk_stat, align 4
  %6 = alloca %struct.elfhdr*, align 8
  %7 = alloca %struct.elf_phdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ia64_boot_param*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @SSC_CONSOLE_INIT, align 4
  %16 = call i8* @ssc(i32 0, i64 0, i64 0, i64 0, i32 %15)
  %17 = load i32, i32* @SSC_GET_ARGS, align 4
  %18 = call i8* @ssc(i32 ptrtoint ([1024 x i8]* @start_bootloader.buffer to i32), i64 0, i64 0, i64 0, i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %14, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @start_bootloader.buffer, i64 0, i64 0), i8** %13, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %0
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @start_bootloader.buffer, i64 0, i64 0), i8** %12, align 8
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %14, align 8
  br label %23

40:                                               ; preds = %33
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %13, align 8
  store i8 0, i8* %46, align 1
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %0
  %52 = load i64, i64* %14, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i64 1, i64* %14, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @SSC_OPEN, align 4
  %60 = call i8* @ssc(i32 %58, i64 1, i64 0, i64 0, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @cons_write(i8* %65)
  %67 = call i32 @cons_write(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %68, %64
  br label %68

69:                                               ; preds = %55
  %70 = load i32, i32* %2, align 4
  %71 = getelementptr inbounds %struct.disk_stat, %struct.disk_stat* %5, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  store i64 0, i64* %1, align 8
  %72 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 0
  store i32 4096, i32* %72, align 8
  %73 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 1
  store i64 ptrtoint ([4096 x i8]* @start_bootloader.mem to i64), i64* %73, align 8
  %74 = load i32, i32* %2, align 4
  %75 = ptrtoint %struct.disk_req* %4 to i64
  %76 = load i64, i64* %1, align 8
  %77 = load i32, i32* @SSC_READ, align 4
  %78 = call i8* @ssc(i32 %74, i64 1, i64 %75, i64 %76, i32 %77)
  %79 = ptrtoint %struct.disk_stat* %5 to i64
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @SSC_WAIT_COMPLETION, align 4
  %82 = call i8* @ssc(i32 %80, i64 0, i64 0, i64 0, i32 %81)
  store %struct.elfhdr* bitcast ([4096 x i8]* @start_bootloader.mem to %struct.elfhdr*), %struct.elfhdr** %6, align 8
  %83 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %84 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 127
  br i1 %88, label %89, label %98

89:                                               ; preds = %69
  %90 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %91 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = call i64 @strncmp(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 @cons_write(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %223

98:                                               ; preds = %89, %69
  %99 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %100 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ET_EXEC, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @cons_write(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %223

106:                                              ; preds = %98
  %107 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %108 = call i32 @elf_check_arch(%struct.elfhdr* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 @cons_write(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %223

112:                                              ; preds = %106
  %113 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %114 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  %116 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %117 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  %119 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %120 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %9, align 8
  %122 = call i32 @cons_write(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @cons_write(i8* %123)
  %125 = call i32 @cons_write(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %198, %112
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %10, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %201

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 0
  store i32 40, i32* %132, align 8
  %133 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 1
  store i64 ptrtoint ([4096 x i8]* @start_bootloader.mem to i64), i64* %133, align 8
  %134 = load i32, i32* %2, align 4
  %135 = ptrtoint %struct.disk_req* %4 to i64
  %136 = load i64, i64* %9, align 8
  %137 = load i32, i32* @SSC_READ, align 4
  %138 = call i8* @ssc(i32 %134, i64 1, i64 %135, i64 %136, i32 %137)
  %139 = ptrtoint %struct.disk_stat* %5 to i64
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* @SSC_WAIT_COMPLETION, align 4
  %142 = call i8* @ssc(i32 %140, i64 0, i64 0, i64 0, i32 %141)
  %143 = getelementptr inbounds %struct.disk_stat, %struct.disk_stat* %5, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ne i64 %145, 40
  br i1 %146, label %147, label %149

147:                                              ; preds = %131
  %148 = call i32 @cons_write(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %223

149:                                              ; preds = %131
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 40
  store i64 %151, i64* %9, align 8
  store %struct.elf_phdr* bitcast ([4096 x i8]* @start_bootloader.mem to %struct.elf_phdr*), %struct.elf_phdr** %7, align 8
  %152 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %153 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PT_LOAD, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %198

158:                                              ; preds = %149
  %159 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %160 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %164 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @__pa(i32 %165)
  %167 = getelementptr inbounds %struct.disk_req, %struct.disk_req* %4, i32 0, i32 1
  store i64 %166, i64* %167, align 8
  %168 = load i32, i32* %2, align 4
  %169 = ptrtoint %struct.disk_req* %4 to i64
  %170 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %171 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @SSC_READ, align 4
  %174 = call i8* @ssc(i32 %168, i64 1, i64 %169, i64 %172, i32 %173)
  %175 = ptrtoint %struct.disk_stat* %5 to i64
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @SSC_WAIT_COMPLETION, align 4
  %178 = call i8* @ssc(i32 %176, i64 0, i64 0, i64 0, i32 %177)
  %179 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %180 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @__pa(i32 %181)
  %183 = inttoptr i64 %182 to i8*
  %184 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %185 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %190 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.elf_phdr*, %struct.elf_phdr** %7, align 8
  %193 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = sub nsw i64 %191, %195
  %197 = call i32 @memset(i8* %188, i32 0, i64 %196)
  br label %198

198:                                              ; preds = %158, %157
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %126

201:                                              ; preds = %126
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @SSC_CLOSE, align 4
  %204 = call i8* @ssc(i32 %202, i64 0, i64 0, i64 0, i32 %203)
  %205 = call i32 @cons_write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %206 = load i32, i32* @_IA64_REG_AR_KR0, align 4
  %207 = call i32 @ia64_setreg(i32 %206, i32 -67108864)
  %208 = load i8*, i8** %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = call %struct.ia64_boot_param* @sys_fw_init(i8* %208, i64 %209)
  store %struct.ia64_boot_param* %210, %struct.ia64_boot_param** %11, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = ptrtoint i8* %211 to i64
  %213 = load i32, i32* @SSC_LOAD_SYMBOLS, align 4
  %214 = call i8* @ssc(i32 0, i64 %212, i64 0, i64 0, i32 %213)
  %215 = call i32 (...) @debug_break()
  %216 = load %struct.ia64_boot_param*, %struct.ia64_boot_param** %11, align 8
  %217 = ptrtoint %struct.ia64_boot_param* %216 to i64
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @jmp_to_kernel(i64 %217, i64 %218)
  %220 = call i32 @cons_write(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %221 = load i32, i32* @SSC_EXIT, align 4
  %222 = call i8* @ssc(i32 -1, i64 0, i64 0, i64 0, i32 %221)
  br label %223

223:                                              ; preds = %201, %147, %110, %104, %96
  ret void
}

declare dso_local i8* @ssc(i32, i64, i64, i64, i32) #1

declare dso_local i32 @cons_write(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @elf_check_arch(%struct.elfhdr*) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ia64_setreg(i32, i32) #1

declare dso_local %struct.ia64_boot_param* @sys_fw_init(i8*, i64) #1

declare dso_local i32 @debug_break(...) #1

declare dso_local i32 @jmp_to_kernel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
