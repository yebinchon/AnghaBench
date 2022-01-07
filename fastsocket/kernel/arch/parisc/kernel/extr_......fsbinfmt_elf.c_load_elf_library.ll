; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_......fsbinfmt_elf.c_load_elf_library.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_......fsbinfmt_elf.c_load_elf_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.elf_phdr = type { i64, i32, i64, i64, i64 }
%struct.elfhdr = type { i64, i32, i32, i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_DENYWRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ELF_MIN_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @load_elf_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_elf_library(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.elf_phdr*, align 8
  %4 = alloca %struct.elf_phdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.elfhdr, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %13 = load i32, i32* @ENOEXEC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = bitcast %struct.elfhdr* %12 to i8*
  %17 = call i32 @kernel_read(%struct.file* %15, i32 0, i8* %16, i32 24)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %232

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ELFMAG, align 4
  %26 = load i32, i32* @SELFMAG, align 4
  %27 = call i64 @memcmp(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %232

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ET_EXEC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = call i32 @elf_check_arch(%struct.elfhdr* %12)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.file*, %struct.file** %2, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.file*, %struct.file** %2, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %42, %39, %35, %30
  br label %232

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 40, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.elf_phdr* @kmalloc(i32 %63, i32 %64)
  store %struct.elf_phdr* %65, %struct.elf_phdr** %3, align 8
  %66 = load %struct.elf_phdr*, %struct.elf_phdr** %3, align 8
  %67 = icmp ne %struct.elf_phdr* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  br label %232

69:                                               ; preds = %55
  %70 = load %struct.elf_phdr*, %struct.elf_phdr** %3, align 8
  store %struct.elf_phdr* %70, %struct.elf_phdr** %4, align 8
  %71 = load i32, i32* @ENOEXEC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.file*, %struct.file** %2, align 8
  %74 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %77 = bitcast %struct.elf_phdr* %76 to i8*
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @kernel_read(%struct.file* %73, i32 %75, i8* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %229

84:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %10, align 4
  %87 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %91, i64 %93
  %95 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PT_LOAD, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99, %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %229

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %117, %110
  %112 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %113 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PT_LOAD, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %119 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %118, i32 1
  store %struct.elf_phdr* %119, %struct.elf_phdr** %4, align 8
  br label %111

120:                                              ; preds = %111
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 @down_write(i32* %124)
  %126 = load %struct.file*, %struct.file** %2, align 8
  %127 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %128 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ELF_PAGESTART(i32 %129)
  %131 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %132 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %135 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @ELF_PAGEOFFSET(i32 %136)
  %138 = add i64 %133, %137
  %139 = load i32, i32* @PROT_READ, align 4
  %140 = load i32, i32* @PROT_WRITE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PROT_EXEC, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MAP_FIXED, align 4
  %145 = load i32, i32* @MAP_PRIVATE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @MAP_DENYWRITE, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %150 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %153 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @ELF_PAGEOFFSET(i32 %154)
  %156 = sub nsw i64 %151, %155
  %157 = call i32 @do_mmap(%struct.file* %126, i32 %130, i64 %138, i32 %143, i32 %148, i64 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = call i32 @up_write(i32* %161)
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %165 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ELF_PAGESTART(i32 %166)
  %168 = icmp ne i32 %163, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %120
  br label %229

170:                                              ; preds = %120
  %171 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %172 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %176 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %174, %177
  store i64 %178, i64* %5, align 8
  %179 = load i64, i64* %5, align 8
  %180 = call i64 @padzero(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = load i32, i32* @EFAULT, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %9, align 4
  br label %229

185:                                              ; preds = %170
  %186 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %187 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %190 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add i64 %188, %192
  %194 = load i32, i32* @ELF_MIN_ALIGN, align 4
  %195 = sext i32 %194 to i64
  %196 = add i64 %193, %195
  %197 = sub i64 %196, 1
  %198 = trunc i64 %197 to i32
  %199 = call i32 @ELF_PAGESTART(i32 %198)
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %7, align 8
  %201 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %202 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %205 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = add i64 %203, %207
  store i64 %208, i64* %6, align 8
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* %7, align 8
  %211 = icmp ugt i64 %209, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %185
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = call i32 @down_write(i32* %216)
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* %7, align 8
  %221 = sub i64 %219, %220
  %222 = call i32 @do_brk(i64 %218, i64 %221)
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = call i32 @up_write(i32* %226)
  br label %228

228:                                              ; preds = %212, %185
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %228, %182, %169, %109, %83
  %230 = load %struct.elf_phdr*, %struct.elf_phdr** %3, align 8
  %231 = call i32 @kfree(%struct.elf_phdr* %230)
  br label %232

232:                                              ; preds = %229, %68, %54, %29, %21
  %233 = load i32, i32* %9, align 4
  ret i32 %233
}

declare dso_local i32 @kernel_read(%struct.file*, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @elf_check_arch(%struct.elfhdr*) #1

declare dso_local %struct.elf_phdr* @kmalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_mmap(%struct.file*, i32, i64, i32, i32, i64) #1

declare dso_local i32 @ELF_PAGESTART(i32) #1

declare dso_local i64 @ELF_PAGEOFFSET(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @padzero(i64) #1

declare dso_local i32 @do_brk(i64, i64) #1

declare dso_local i32 @kfree(%struct.elf_phdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
